<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CatalogController
 *
 * @author Vadyus
 */
class BasketController extends Alcotec_Frontend_Controller_BasketController {

	/* PrivatBank */
	private static $url = 'https://payparts2.privatbank.ua/ipp/v2/payment/create';
	private static $urlStatus = 'https://payparts2.privatbank.ua/ipp/v2/payment/state';
	private static $toPB = 'https://payparts2.privatbank.ua/ipp/v2/payment?token=';
	private static $password = '6e330cf5e4374e1f9b0c177d43e847d5';
	private static $storeId = '3B42D5345D104D3388E6';
	private static $responseUrl = 'https://590.ua/test.php'; /* https://590.ua/privatbank/check.php */
	private static $redirectUrl = 'https://590.ua/basket/thankyou';

	private $amount_summ = 0;
	private $partsCount = 6;
	private $orderId;

    private $pbPeriods = [
        1 => [3,4,5,6,7,8],
        2 => [3,4,5,6],
        3 => [3],
    ];

	/* PrivatBank */

    public function paybycardAction() {
        //$this->_helper->removeHelper ( 'viewRenderer' );
        $ordersNamespace = new Zend_Session_Namespace('Order');
        if ($this->_hasParam('id')) {
            if ($this->_getParam('id') == md5('21581ssssO4nsb'))
                $ordersNamespace->orderId = 21581;
        }
        if ($ordersNamespace->orderId) {
            $currencyNamespace = new Zend_Session_Namespace('Currency');
            $currencyNamespace->active = 4;
            $modOrders = new CatalogOrders();
            $order = $modOrders->find($ordersNamespace->orderId )->current()->toArray();
            $siteId = Zend_Registry::get('siteId');
            $db = Zend_Db_Table_Abstract::getDefaultAdapter();
            $site = $db->fetchRow ("SELECT * FROM sites WHERE id = {$siteId}");
            $comment = trim($order['items_info'], ',');
            $merch_id = 'i1777600321';
            $signature = 'BPTxb84FtvEruu6lxjeYRtAEq1QulfjHhLrZ2';
            $xml = "<request>
    	      <version>1.2</version>
    	      <result_url>{$site['href']}/basket/thankyou</result_url>
    	      <server_url>https://cms.alcotec.com.ua/admin/application/models/LiqPay/invoice_check.php</server_url>
    	      <merchant_id>{$merch_id}</merchant_id>
    	      <order_id>{$order['id']}</order_id>
    	      <amount>{$order['summ']}</amount>
    	      <currency>UAH</currency>
    	      <description>{$order['name']}. Оплата заказа №{$order['id']}</description>
    	      <default_phone></default_phone>
    	      <pay_way>card</pay_way>
    		</request>";
            $order['items_info'] = $comment;
            $this->view->order = $order;
            $xml_encoded = base64_encode($xml);



            $lqsignature = base64_encode(sha1($signature . $xml . $signature, 1));
            $form = new Zend_Form();
            $form->setAction('https://www.liqpay.com/?do=clickNbuy');
            $form->setMethod('POST');
            $form->addelement('hidden', 'operation_xml', array('value' => $xml_encoded, 'Decorators' => array('ViewHelper')));
            $form->addelement('hidden', 'signature', array('value' => $lqsignature, 'Decorators' => array('ViewHelper')));
            $form->addElement('submit', 'sbtbutton', array('label' => 'Оплатить', 'class'=>'btn'));
            $this->view->form = $form;
        } else {
            $this->getResponse()->setHttpResponseCode(404);
            $this->_redirect('/404');
        }
    }

    public function liqpayStatusAction() {
        if ($this->_request->isPost()) {
            $privKey = 'BPTxb84FtvEruu6lxjeYRtAEq1QulfjHhLrZ2';
            $pubKey = 'i1777600321';
            $post = $this->_request->getPost();
            $sig = base64_encode(sha1(
                $privKey.
                $post['amount'].
                $post['currency'].
                $pubKey.
                $post['order_id'].
                $post['type'].
                $post['description'].
                $post['status'].
                $post['transaction_id'].
                $post['sender_phone']
                , 1));
            if ($sig==$post['signature'] && $post['status']=='success') {
                $modOrders = new CatalogOrders();
                $order = $modOrders->find($post['order_id'])->current();
                if ($order) {
                    $order->payed = 1;
                    $order->save();
                }
            }
        }
    }

    public function cleanAction() {
        $this->_helper->removeHelper('viewRenderer');
        $basket = new Zend_Session_Namespace('Basket');
        $credit = new Zend_Session_Namespace('CreditBasket');
        $basket->unsetAll();
        $credit->unsetAll();
    }

    public function addtocartAction() {
        if ($this->_request->isXmlHttpRequest() && $this->_hasParam('itemId')) {
            $modBasket = new Basket();
            $id = intval($this->_getParam('itemId'));
            $type = $this->_hasParam('type') ? htmlspecialchars($this->_getParam('type')) : 'item';
            $this->view->data = $modBasket->addItem($id, $type, $this->_hasParam('credit'))->getBasketItems();
            $this->view->datastats = $modBasket->getBasketStats();
        }
    }

    public function basketDataAction() {
        $modBasket = new Basket();
        $this->view->data = $modBasket->getBasketItems();
        $this->view->datastats = $modBasket->getBasketStats();
    }

    public function delitemAction() {
        $this->_helper->removeHelper('viewRenderer');
        if ($this->_request->isXmlHttpRequest() && $this->_hasParam('id')) {
            $modBasket = new Basket();
            $id = intval($this->_getParam('id'));
            $type = $this->_hasParam('type') ? htmlspecialchars($this->_getParam('type')) : 'item';
            if ($modBasket->delItem($id, $type, $this->_hasParam('credit')))
                echo 'ok';
        }
    }

    public function getbasketstatsAction() {
        $this->_helper->removeHelper('viewRenderer');
        if ($this->_request->isXmlHttpRequest()) {
            $modBasket = new Basket();
            echo Zend_Json::encode($modBasket->getBasketStats());
        }
    }

    public function checkCodeAction() {
        $code = $this->_getParam('code');
        $modBonusCodes = new BonusCodes();
        $result = false;
        if ($codeObj = $modBonusCodes->checkCode($code)) {
            $basket = new Zend_Session_Namespace('Basket');
            $basket->bonus = $codeObj;
            $result = true;
        }

        $this->_helper->json(
            array('result'=>$result)
        );
    }

    public function changeAction() {
        $this->_helper->removeHelper('viewRenderer');
        if ($this->_request->isXmlHttpRequest() && $this->_hasParam('id') && $this->_hasParam('newvalue')) {
            $id = intval($this->_getParam('id'));
            $newValue = intval($this->_getParam('newvalue'));
            $type = $this->_hasParam('type') ? htmlspecialchars($this->_getParam('type')) : 'item';
            $modBasket = new Basket();
            if ($modBasket->changeAmount($id, $type, $this->_hasParam('credit'), $newValue))
                echo 'ok';
        }
    }

    public function indexAction() {
        $modBasket = new Basket();
        $form = new BasketForm();
        $currencies = Zend_Registry::get('currencies');
        $currencyNamespace = new Zend_Session_Namespace('Currency');
        $basketData = $modBasket->getBasketItems();
        $siteId = Zend_Registry::get('siteId');
        $this->view->data = $basketData;
        /**
         * генерим id для аналитики
         */
        $this->view->transactionId = str_replace('.', '', microtime(true));

        $bonusAmount = 0;
        foreach ($basketData['itemsInfo'] as $item) {
            $bonusAmount += $item['bonus_amount'];
        }
        $this->view->bonusAmount = $bonusAmount;
        $this->view->basketSummUah = $basketData['summ'] * $currencies[$currencyNamespace->active]['rate'];
        $this->view->form = $form;
        $this->view->site = $siteId;
        $authObj = Alcotec_AuthFrontend::getInstance();

        if ($authObj->hasIdentity()) {
            $this->view->user = $authObj->getUser();
        }
        if ($this->_request->isPost()) {
            if ($this->_getParam('paytype') == '1') {
                $name2 = $this->_getParam('name2');
                if (empty ($name2)) {
                    $this->view->messages .= 'Пожалуйста, заполните поле "Фамилия"';
                    $this->view->form = $form->populate($_POST);
                    return;
                }
            }
            if ($form->isValid($_POST) && !empty($basketData)) {
                $values = $form->getValues();
/*
                if ($values['phone'][0] == '(')
                    $values['phone'] = '+38' . $values['phone'];
                $phone = $values['phone'];
                if ($phone[4] != '0' && $siteId != 1) {
                    $this->view->messages = 'Пожалуйста, заполните правильно поле "Телефон", чтобы наши менеджеры могли связатся с вами';
                    $form->phone->setAttrib('style', 'b: 2px solid red;');
                    $this->view->form = $form->setDefaults($_POST);
                    return;
                }*/
                if (!ctype_digit($phone))
                    $values['phone'] = preg_replace('/[^0-9]/', '', $values['phone']);

                $spath=$values['phone'];
                $nc=stripos($spath,"0");
                $str_len = strlen($values['phone']);
                        if ($str_len>=10) {

                        if($nc!==false){
                            if (substr($spath,0,1)==0) {
                                $spath="+38(".substr($spath,0,3).") ".substr($spath,3,3)."-".substr($spath,6,2)."-".substr($spath,8);
                            } else{
                                if (substr($spath,0,1)=='+') {
                                    $spath=substr($spath,0,$nc)."(".substr($spath,$nc,3).") ".substr($spath,$nc+3,3)."-".substr($spath,$nc+6,2)."-".substr($spath,$nc+8);
                                } elseif (substr($spath,0,1)==3) {
                                    $spath="+".substr($spath,0,$nc)."(".substr($spath,$nc,3).") ".substr($spath,$nc+3,3)."-".substr($spath,$nc+6,2)."-".substr($spath,$nc+8);
                                }else
                                $spath="+3".substr($spath,0,$nc)."(".substr($spath,$nc,3).") ".substr($spath,$nc+3,3)."-".substr($spath,$nc+6,2)."-".substr($spath,$nc+8);
                            }
                        }
        } else{
                $spath="+38(0".substr($spath,0,2).") ".substr($spath,2,3)."-".substr($spath,5,2)."-".substr($spath,7);
        }
                $phone = $spath;
                $values['phone'] = $spath;

               /* if (!ctype_digit($phone)) {
                    $this->view->messages = 'Пожалуйста, заполните правильно поле "Телефон", чтобы наши менеджеры могли связатся с вами';
                    $form->phone->setAttrib('style', 'b: 2px solid red;');
                    $this->view->form = $form->setDefaults($_POST);
                    return;
                }*/
                if ($this->_hasParam('name2')) {
                    $values['name'] .= ' ' . htmlspecialchars($this->_getParam('name2'));
                }
                if ($_COOKIE['region'])
                    $values['region_id'] = $_COOKIE['region'];
                if ($values['subscribe'] == 1 && !empty($values['email'])) {
                    $modSubscription = new Subscriptions();
                    $modSubscription->insert(array('email' => htmlspecialchars($values['email'])));
                }
                unset($values['subscribe']);

                $bnNamespace = new Zend_Session_Namespace('BezNal');
                if ($bnNamespace->value == 2) {
                    foreach ($currencies as &$curr)
                        $curr['rate'] = $curr['rate'] != 1 ? round($curr['rate'] * 1.05, 2) : 1;
                    $values['comments'] .= "\n" . 'Безналичный расчет';
                }
                unset($curr);
                $values['rates'] = serialize($currencies);
                $srcNamespace = new Zend_Session_Namespace('TrafficSrc');
                if ($values['idsrc']) {
                    $values['id_src'] = $values['idsrc'];
                }
                unset($values['idsrc']);
                if (empty($values['id_src']) && $srcNamespace->src)
                    $values['id_src'] = $srcNamespace->src;
                $values['src_link'] = $srcNamespace->link;
                $paytype = $values['paytype'];
                if ($values['paytype'] == 1)
                    $values['comments'] .= "\n" . 'Оплата с карточки';
                $authObj = Alcotec_AuthFrontend::getInstance();
                $modCatalogOrders = new CatalogOrders();
                $values['payed'] = 0;
                if ($modCatalogOrders->order($values, $modBasket)) {
                    $modBasket->unsetAll();
                    if ($values['paytype'] == 1) {
                        $this->_redirect('/basket/paybycard');
                    } else
                        $this->_redirect('/basket/thankyou');
                }
            }
            $this->view->form = $form->setDefaults($_POST);
        }
    }

    public function orderAction() {
        $modBasket = new Basket();
        $form = new BasketForm();
        $currencies = Zend_Registry::get('currencies');
        $currencyNamespace = new Zend_Session_Namespace('Currency');
        $basketData = $modBasket->getBasketItems();
        $siteId = Zend_Registry::get('siteId');
        $this->view->data = $basketData;
        /**
         * генерим id для аналитики
         */
        $this->view->transactionId = str_replace('.', '', microtime(true));



        $bonusAmount = 0;
        $firstItem = array_values($basketData['itemsInfo'])[0];
        $maxPrice = $firstItem['price'];
        $minRent = 3;

        $iter=0;
        $allPriceSumm=0;
        foreach ($basketData['itemsInfo'] as $basketDatas) {
            $allPriceSumm+=$basketDatas['price']*$basketData["Basket"]["items"][$basketDatas["id"]]["amount"];
        }

$i=0;
        foreach ($basketData['itemsInfo'] as $item) {
            $currentRent = floatval($item['rent']);
            $allRentId[$i]=($currentRent >= 25) ? 1 : (($currentRent > 12.5) ? 2 : 3);
            $i++;
            $uniqRent = array_unique($allRentId);

        	if ($item['price'] >= $maxPrice) {
        		$maxPrice = $item['price'];
	            $currentRent = floatval($item['rent']);
	            $minRent = ($currentRent >= 25) ? 1 : (($currentRent > 12.5) ? 2 : 3);
                $lastPrice = $item['price'];
                $lastAmount = $basketData["Basket"]["items"][$item["id"]]["amount"];
        	}
            $bonusAmount += $item['bonus_amount'];
        }


                if ( $minRent == 1 && count($uniqRent) == 1 &&  $uniqRent[0] == 1 ){
                    $minRent = 1;
                } elseif ($minRent == 2 && count($uniqRent) == 1 &&  $uniqRent[0] == 2 ){
                        $minRent = 2;
                    } elseif ( $minRent == 1 || $minRent == 2 ) {
                    if ($lastPrice*$lastAmount < $allPriceSumm*0.7){
                        $minRent = 3;
                    }
                }


        $this->view->payParts = $this->pbPeriods[$minRent];
        $this->view->bonusAmount = $bonusAmount;
        $this->view->basketSummUah = $basketData['summ'] * $currencies[$currencyNamespace->active]['rate'];

		//$this->view->newposts = Api::getnewposts();
        $this->view->form = $form;
        $this->view->site = $siteId;
        $authObj = Alcotec_AuthFrontend::getInstance();

        if ($authObj->hasIdentity()) {
            $this->view->user = $authObj->getUser();
        }
        if ($this->_request->isPost()) {
            if ($this->_getParam('paytype') == '1') {
                $name2 = $this->_getParam('name2');
                if (empty($name2)) {
                    $this->view->messages .= 'Пожалуйста, заполните поле "Фамилия"';
                    $this->view->form = $form->populate($_POST);
                    return;
                }
            }
            if ($form->isValid($_POST) && !empty($basketData)) {
                $values = $form->getValues();
/*
                if ($values['phone'][0] == '(')
                    $values['phone'] = '+38' . $values['phone'];
                $phone = $values['phone'];
                if ($phone[4] != '0' && $siteId != 1) {
                    $this->view->messages = 'Пожалуйста, заполните правильно поле "Телефон", чтобы наши менеджеры могли связатся с вами';
                    $form->phone->setAttrib('style', 'b: 2px solid red;');
                    $this->view->form = $form->setDefaults($_POST);
                    return;
                }*/
                if (!ctype_digit($phone))
                    $values['phone'] = preg_replace('/[^0-9]/', '', $values['phone']);
                $spath=$values['phone'];
                $nc=stripos($spath,"0");
                $str_len = strlen($values['phone']);
                        if ($str_len>=10) {

                        if($nc!==false){
                            if (substr($spath,0,1)==0) {
                                $spath="+38(".substr($spath,0,3).") ".substr($spath,3,3)."-".substr($spath,6,2)."-".substr($spath,8);
                            } else{
                                if (substr($spath,0,1)=='+') {
                                    $spath=substr($spath,0,$nc)."(".substr($spath,$nc,3).") ".substr($spath,$nc+3,3)."-".substr($spath,$nc+6,2)."-".substr($spath,$nc+8);
                                } elseif (substr($spath,0,1)==3) {
                                    $spath="+".substr($spath,0,$nc)."(".substr($spath,$nc,3).") ".substr($spath,$nc+3,3)."-".substr($spath,$nc+6,2)."-".substr($spath,$nc+8);
                                }else
                                $spath="+3".substr($spath,0,$nc)."(".substr($spath,$nc,3).") ".substr($spath,$nc+3,3)."-".substr($spath,$nc+6,2)."-".substr($spath,$nc+8);
                            }
                        }
        } else{
                $spath="+38(0".substr($spath,0,2).") ".substr($spath,2,3)."-".substr($spath,5,2)."-".substr($spath,7);
        }

                $phone = $spath;
                $values['phone'] = $spath;
               /* if (!ctype_digit($phone)) {
                    $this->view->messages = 'Пожалуйста, заполните правильно поле "Телефон", чтобы наши менеджеры могли связатся с вами';
                    $form->phone->setAttrib('style', 'b: 2px solid red;');
                    $this->view->form = $form->setDefaults($_POST);
                    return;
                }*/

                if ($this->_hasParam('name2')) {
                    $values['name'] .= ' ' . htmlspecialchars($this->_getParam('name2'));
                }
                if ($_COOKIE['region'])
                    $values['region_id'] = $_COOKIE['region'];
                if ($values['subscribe'] == 1 && !empty($values['email'])) {
                    $modSubscription = new Subscriptions();
                    $modSubscription->insert(array('email' => htmlspecialchars($values['email'])));
                }
                unset($values['subscribe']);

                $bnNamespace = new Zend_Session_Namespace('BezNal');
                if ($bnNamespace->value == 2) {
                    foreach ($currencies as &$curr)
                        $curr['rate'] = $curr['rate'] != 1 ? round($curr['rate'] * 1.05, 2) : 1;
                    $values['comments'] .= "\n" . 'Безналичный расчет';
                }
                unset($curr);
                $values['rates'] = serialize($currencies);
                $srcNamespace = new Zend_Session_Namespace('TrafficSrc');
                if ($values['idsrc']) {
                    $values['id_src'] = $values['idsrc'];
                }
                unset($values['idsrc']);
                if (empty($values['id_src']) && $srcNamespace->src)
                    $values['id_src'] = $srcNamespace->src;
                $values['src_link'] = $srcNamespace->link;
                $paytype = $values['paytype'];
                if ($values['paytype'] == 1)
                    $values['comments'] .= "\n\n" . 'Оплата с карточки';
                if ($values['paytype'] == 0)
                    $values['comments'] .= "\n\n" . 'Оплата наличными при получении';
                $authObj = Alcotec_AuthFrontend::getInstance();
                $modCatalogOrders = new CatalogOrders();
                $values['payed'] = 0;
                if ($modCatalogOrders->order($values, $modBasket)) {
                  /*  $modBasket->unsetAll(); */  //обнуление корзины после покупки
                    if ($values['paytype'] == 1) {
                        $this->_redirect('/basket/paybycard');
                    } else{
                        $modBasket->unsetAll();
                        $this->_redirect('/basket/thankyou');
                    }
                }
            }
            $this->view->form = $form->setDefaults($_POST);
        }
    }

    public function cardAction() {
        $ordersNamespace = new Zend_Session_Namespace('Order');
        $modOrders = new CatalogOrders();
        $orderId = $this->_request->isGet() ? $ordersNamespace->orderId : $this->_getParam('OrderID');
        $order = $modOrders->find($orderId)->current();
        $siteId = Zend_Registry::get('siteId');
        if ($order) {
            require_once (APPLICATION_PATH . '/views/__helpers/Price.php');
            $priceHelper = new Zend_View_Helper_Price();
            $curr = Zend_Registry::get('currencies');
            $purchaseTime = substr(str_replace('-', '', $order->date), 2, 8) . str_replace( ':', '', $order->time);

            $summ = round($order->summ * ($curr[$order->id_currency]['rate'] / $curr[4]['rate']), 2);
            $this->view->order = $order;
            $this->view->summ = $summ;
            $summ = $summ * 100;

            switch ($siteId) {
                case 4:
                    $k[0] = '6428296';
                    $k[1] = 'E0148911';
                    break;
                case 5:
                    $k[0] = '6476397';
                    $k[1] = 'E0155465';
                    break;
            }
            if ($this->_request->isGet()) {
                $fp = fopen("/var/www/library/Alcotec/cert/{$k[0]}.pem", 'r');
                $data = "{$k[0]};{$k[1]};$purchaseTime;$order->id;980;$summ;;";

                $priv_key = fread($fp, 8192);
                fclose($fp);
                $pkeyid = openssl_get_privatekey($priv_key);
                openssl_sign($data, $signature, $pkeyid);
                openssl_free_key($pkeyid);
                $b64sign = base64_encode($signature);

                $form = new Zend_Form();
                $form->setAction('https://secure.upc.ua/go/enter');
                $form->setMethod('POST');
                $form->addElement('hidden', 'Version', array('value' => 1, 'Decorators' => array('ViewHelper')));
                $form->addElement('hidden', 'MerchantID', array('value' => $k[0], 'Decorators' => array('ViewHelper')));
                $form->addElement('hidden', 'TerminalID', array('value' => $k[1], 'Decorators' => array('ViewHelper')));
                $form->addElement('hidden', 'TotalAmount', array('value' => $summ, 'Decorators' => array('ViewHelper')));
                $form->addElement('hidden', 'Currency', array('value' => 980, 'Decorators' => array('ViewHelper')));
                $form->addElement('hidden', 'locale', array('value' => 'RU', 'Decorators' => array('ViewHelper')));
                $form->addElement('hidden', 'PurchaseTime', array('value' => $purchaseTime, 'Decorators' => array('ViewHelper')));
                $form->addElement('hidden', 'OrderID', array('value' => $order->id, 'Decorators' => array('ViewHelper')));
                $form->addElement('hidden', 'PurchaseDesc', array('value' => $order->name . ' Оплата заказа ' . $order->id, 'Decorators' => array('ViewHelper')));
                $form->addElement('hidden', 'Signature', array('value' => $b64sign, 'Decorators' => array('ViewHelper')));

                $form->addElement("submit", 'sbtbutton', array('label' => "Оплатить", 'class'=>'btn'));
                $this->view->form = $form;
            } else {
                $signature = $this->_getParam('Signature');
                $signature = base64_decode($signature);

                $data = "{$k[0]};{$k[1]};$purchaseTime;$order->id;{$this->_getParam('XID')};980;$summ;;{$this->_getParam('TranCode')};{$this->_getParam('ApprovalCode')};";
                //$data = "1753231;E7881231;$purchaseTime;$order->id;{$postData['XID']};980;$summ;;{$postData['TranCode']};{$postData['ApprovalCode']};";
                //echo $data.PHP_EOL;
                $fp = fopen('/var/www/library/Alcotec/cert/work-server.cert', 'r');
                $cert = fread($fp, 8192);
                fclose($fp);
                $pubkeyid = openssl_get_publickey($cert);

                $ok = openssl_verify($data, $signature, $pubkeyid);
                if ($ok == 1) {
                    if ($this->_getParam('TranCode') == '000') {
                        $order->payed = 1;
                        $order->card_type = 'upc';
                        $order->admin_comments .= PHP_EOL . ' Оплата с карточки';
                        $order->save();
                    }
                } elseif ($ok == 0) {
                    $status = 'bad';
                } else {
                    $status = 'error';
                }

                openssl_free_key($pubkeyid);
                if ($ok == 1) {
                    foreach (array_diff_key($this->getRequest()->getParams(), array('module' => '', 'catid' => '', 'action' => '', 'controller' => '')) as $k => $v) {
                        $msg .= "{$k}=\"{$v}\"" . PHP_EOL;
                    }

                    $msg .= 'Response.action="approve"';
                    $this->view->msg = $msg;
                }
            }
        } else {
            $this->_redirect('/404');
        }
    }

	// PrivatBank
	public function privatpaypartsAction() {
        $this->partsCount = $this->_request->getPost('period');
        $methods = ['PP', 'IA'];
		$productsAr = $this->_request->getPost('product');
        $method = $methods[$this->_request->getPost('type')];

		$this->orderId = md5(time());
/*$orderId = $this->_request->isGet() ? $ordersNamespace->orderId : $this->_getParam('OrderID');*/


		$products = [];
		foreach ($productsAr as $item) {
			$this->amount_summ += intval($item['count'] * $item['price']);
			$products[] = (object) $item;
		}

		$this->amount_summ .= '.00';

		$productsString = '';
		foreach ($products as $product) {
			$price = floatval($product->price) * 100;
			$productsString .= $product->name . $product->count . $price;
		}

		$params = [
			'storeId'      => self::$storeId,
			'orderId'      => $this->orderId,
			'amount'       => $this->amount_summ,
			'partsCount'   => $this->partsCount,
			'merchantType' => $method,
			'products'     => $products,
			'responseUrl'  => self::$responseUrl,
			'redirectUrl'  => self::$redirectUrl,
		];

		$secure_params = [
			self::$password,
			self::$storeId,
			$this->orderId,
			floatval($this->amount_summ) * 100,
			$this->partsCount,
			$method,
			self::$responseUrl,
			self::$redirectUrl,
			$productsString,
			self::$password,
		];

		$signatureStr = implode($secure_params);
		$params['signature'] = base64_encode(hex2bin(sha1($signatureStr)));

        $this->toLog($params);

		if ($this->_creditOrderSave()) {
            $result = $this->_makeRequest(self::$url, (object)$params);
		} else {
            $result = ['success' => false];
        }

		echo json_encode($result);
		die;
    }

	private function _checkResponse($response) {
		if (empty($response->token)) {
			return [
				'status'  => false,
				'message' => $response->message,
			];
		}

		$expectedAr = [
			self::$password,
			$response->state,
			self::$storeId,
			$response->orderId,
			$response->token,
			self::$password
		];

		$expectedSignature = base64_encode(hex2bin(sha1(implode($expectedAr))));
		if ($expectedSignature == $response->signature && $response->state == 'SUCCESS') {
			//if ($this->_creditOrderSave()) {
				return [
					'status' => true,
					'url'    => self::$toPB . $response->token,
                    'method' => $method,
				];
			//}
		}
	}

	private function _makeRequest($url, $object) {
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_HTTPHEADER, array(
		    'Content-Type: application/json; charset=UTF-8;',
		    'Accept: application/json;',
		    'Accept-Encoding: UTF-8;'
		));
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
		curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($object));
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$result = json_decode(curl_exec($ch));
		return $this->_checkResponse($result);
	}

	private function _makeRequestWOValidation($url, $object) {
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_HTTPHEADER, array(
		    'Content-Type: application/json; charset=UTF-8;',
		    'Accept: application/json;',
		    'Accept-Encoding: UTF-8;'
		));
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
		curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($object));
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		return json_decode(curl_exec($ch));
	}

    private function _creditOrderSave() {
        $modBasket = new Basket();
        // $currencies = Zend_Registry::get ( 'currencies' );
        // $currencyNamespace = new Zend_Session_Namespace('Currency');
        $basketData = $modBasket->getBasketItems();
        $siteId = Zend_Registry::get('siteId');
        // $this->view->data = $basketData;

        // $this->view->transactionId = str_replace('.', '', microtime(true));

        $bonusAmount = 0;
        foreach ($basketData['itemsInfo'] as $item) {
            $bonusAmount += $item['bonus_amount'];
        }
        // $this->view->bonusAmount = $bonusAmount;
        // $this->view->basketSummUah = $basketData['summ'] *$currencies[$currencyNamespace->active]['rate'];
        // $authObj = Alcotec_AuthFrontend::getInstance();

        $products = [];
        foreach ($this->_getParam('product') as $product) {
        	$products[] = $product['name'];
        }
        $phone = $this->_getParam('phone');
                           $phone = preg_replace('/[^0-9]/', '', $phone);
                        $spath=$phone;
                        $nc=stripos($spath,"0");

                        $str_len = strlen($phone);
                        if ($str_len>=10) {

                        if($nc!==false){
                            if (substr($spath,0,1)==0) {
                                $spath="+38(".substr($spath,0,3).") ".substr($spath,3,3)."-".substr($spath,6,2)."-".substr($spath,8);
                            } else{
                                if (substr($spath,0,1)=='+') {
                                    $spath=substr($spath,0,$nc)."(".substr($spath,$nc,3).") ".substr($spath,$nc+3,3)."-".substr($spath,$nc+6,2)."-".substr($spath,$nc+8);
                                } elseif (substr($spath,0,1)==3) {
                                    $spath="+".substr($spath,0,$nc)."(".substr($spath,$nc,3).") ".substr($spath,$nc+3,3)."-".substr($spath,$nc+6,2)."-".substr($spath,$nc+8);
                                }else
                                $spath="+3".substr($spath,0,$nc)."(".substr($spath,$nc,3).") ".substr($spath,$nc+3,3)."-".substr($spath,$nc+6,2)."-".substr($spath,$nc+8);
                            }
                        }
        } else{
                $spath="+38(0".substr($spath,0,2).") ".substr($spath,2,3)."-".substr($spath,5,2)."-".substr($spath,7);
        }

                        $phone = $spath;
        $order = [
        	'site'		=> $siteId,
        	'id_user'	=> null,
        	'name'		=> $this->_getParam('name'),
        	'email'     => $this->_getParam('email'),
        	'phone'     => $phone,
        	'city'		=> '',
        	'address'	=> $this->_getParam('address'),
        	'comments'	=> $this->_getParam('comment'),
        	'date'		=> date('Y-m-d'),
        	'status'	=> 'new',
        	// 'product'	=> implode(', ', $products),
        	'items_count' => count($products),
        	'id_currency' => $this->_getParam('id_currency'),
        	'failreason' => '',
        	'bonus_amount' => 0,
        	'bonus_approved' => 0,
        	'rates' => '',
        	'order_id' => $this->orderId,
        ];
        if ($_COOKIE['region'])
            $order['region_id'] = $_COOKIE['region'];

        $srcNamespace = new Zend_Session_Namespace('TrafficSrc');
        if ($order['idsrc']) {
            $order['id_src'] = $order['idsrc'];
        }

        unset($order['idsrc']);
        if (empty($order['id_src']) && $srcNamespace->src)
            $order['id_src'] = $srcNamespace->src;
        $order['src_link'] = $srcNamespace->link;
        // $paytype = $values ['paytype'];
        // if ($values ['paytype'] == 1)
        $order['comments'] = $order['comments'];
        $modCatalogOrders = new CatalogOrders();
        $order['payed'] = 0;
        if ($modCatalogOrders->order($order, $modBasket)) {
            $modBasket->unsetAll();
            return true;
        }
        return false;
    }

    public function pbresponseAction() {
        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $orders = $db->fetchAll('SELECT id, order_id, comments FROM catalog_orders WHERE order_id IS NOT NULL AND order_status IS NULL');
        foreach ($orders as $order) {
        	$this->_updateOrderStatus($order['id'], $order['order_id'], $order['comments']);
        }
        die;
    }

    private function _updateOrderStatus($id, $orderId, $comments) {
    	$data = [
			'storeId' => self::$storeId,
			'orderId' => $orderId,
			'showRefund' => 'true',
		];
    	$signatureStr = self::$password . $data['storeId'] . $data['orderId'] . self::$password;
    	$data['signature'] = base64_encode(hex2bin(sha1($signatureStr)));
    	$result = $this->_makeRequestWOValidation(self::$urlStatus, $data);
		$signatureWait = base64_encode(hex2bin(sha1(
			self::$password .
			$result->state .
			self::$storeId .
			$orderId .
			$result->paymentState .
			self::$password
		)));
		if ($signatureWait == $result->signature) {
			switch ($result->paymentState) {
				case 'FAIL':
					$orderStatus = 0;
					$comments .= "\n" . 'Отказ (ПриватБанк)';
				break;
				case 'SUCCESS':
					$orderStatus = 1;
					$comments .= "\n" . 'Оплачено (ПриватБанк)';
					break;
				case 'CANCELED':
					$orderStatus = 2;
					$comments .= "\n" . 'Отказ (ПриватБанк)';
					break;
			}
	        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
	        $db->query("UPDATE catalog_orders SET order_status = $orderStatus, admin_comments = \"$comments\" WHERE id = $id");
		}
    }

    public function toLog($data = '') {
        $file = '/var/www/html/test.590.ua/log_file.txt';
        $text = file_get_contents($file);
        $text .= is_array($data) ? json_encode($data) . "\n" : $data . "\n";
        file_put_contents($file, $text);
    }

	// PrivatBank End

    // public function zamenaEmail() {
    //     $email = 'vitaliy.shyshko@alcotec.com.ua';
    //     $message = '590.ua Trade-in заказ';
    //     $transport = new Zend_Mail_Transport_Smtp('localhost');
    //     $mail = new Zend_Mail('UTF-8');
    //     $mail->addTo($email);
    //     $mail->setFrom('notify@cms.alcotec.com.ua', 'Alcotec CMS');
    //     $mail->setSubject('590.ua Trade-in заказ');
    //     $mail->setBodyHtml($message);
    //     try {
    //         $mail->send($transport);
    //     } catch (Exception $e) {
    //         echo $e->getMessage();
    //     }
    // }


   /* public function thankyouAction() {

        $foo = new UniversalAnalyticsCookieParser();
        $cidga = $foo->getCid();

        $ordersNamespace = new Zend_Session_Namespace('Order');
        $orderId = $this->_request->isGet() ? $ordersNamespace->orderId : $this->_getParam('OrderID');

        $modBasket = new Basket();
        $basketData = $modBasket->getBasketItems();
        $orderitemsInfo = $basketData['itemsInfo'];

        $date_today = date('Y-m-d');

        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $db->query("INSERT INTO `googlebuytrans` (`order_id`, `date`, `cookie`, `summ`)
                                VALUES ('".$orderId."','".$date_today."','".$cidga."','111')");

        $this->view->cidga = $cidga;
        $this->view->orderId = $orderId;
        $this->view->orderitemsInfo = $orderitemsInfo;
    }*/

}
