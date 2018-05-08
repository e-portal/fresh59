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
class CatalogController extends Alcotec_Frontend_Controller_CatalogController {

    public function fixAction() {
        exit;
        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $pageIds = $db->fetchAssoc("SELECT page_id, count(page_id) as cnt FROM `seo_links_placements` group by page_id having cnt != 5");
        foreach (array_keys($pageIds) as $pageId){
            $db->delete('seo_links_placements',"page_id = {$pageId}");
        }
    }

    public function actionsAction() {
        $this->_forward('page404','index'); return;
    }

    public function actionAction()
    {
        parent::actionAction();
        $siteId = Zend_Registry::get('siteId');
        $modArticles = new Articles();
        $this->view->articles = $modArticles->fetchAll("site_id = {$siteId} and visible = '1'", 'date DESC', 8, 0)->toArray();
    }

    public function itemAction() {
        $modActions = new Actions();
        $modCat = new Catalog();

        $modFields = new Fields();
        $modFieldsVal = new FieldsValues();
        $config = Zend_Registry::get('config');
        $siteId = Zend_Registry::get('siteId');
        $lang = Zend_Registry::isRegistered('lang') ? Zend_Registry::get('lang') : 'ru';
        if ($lang != 'ru')
            $modCatTranslations = new CatalogTranslations();
        $id = intval($this->_getParam('itemId'));
        if ($siteId == 4) {
            $siteParams = $config->get('site');
            if (strcmp($this->_getParam('itemId'), $id) != 0) {
                $itemName = $this->_getParam('itemName');
                if (!$itemName && strpos($_SERVER['REQUEST_URI'], 'catalog/item')) {
                    $itemName = str_replace('%20', '-', substr($_SERVER['REQUEST_URI'], 14));
                    $itemId = $modCat->findByName($itemName);
                    $item = $modCat->find($itemId)->current();
                    $newUrl = '/' .
                        str_replace(' ', '-', $item->parent_name) . '/' .
                        str_replace(' ', '-', $item->category_onename) . '/' .
                        str_replace(' ', '-', $item->brand) . '-' .
                        str_replace(array(' ', '/'), array('-', ''), $item->name);
                    $this->_redirect($newUrl, array('code' => 301));
                    exit;
                }
                $itemRow = $modCat->findByName($itemName);
                $itemId = $itemRow['id'];
                $item = $modCat->find($itemId)->current();
                if (!$item) {
                    $this->_response->setHttpResponseCode(404);
                    $this->_forward('page404','index');
                    return;
                }
                $db = Zend_Db_Table_Abstract::getDefaultAdapter();
                $catInfo = $db->fetchRow("SELECT * FROM catalog_categories where id = {$item->id_category}");
                $this->view->cat_info = $catInfo;
                $brand_info = $db->fetchRow("SELECT * FROM catalog_brands where id = {$item->id_brand}");
                $this->view->brand_info = $brand_info;
                if ($itemRow['visible']===NULL) {
                    if ($catInfo["visible_{$siteId}"]!=1) {
                        $this->_response->setHttpResponseCode(404);
                        $this->_forward('page404','index');
                        return;
                    } else {
                        $otherItemsWithSameCategory = $modCat->getItemList()->where('c.archive = 0')->where('c.id_category = ?',$item->id_category)->where('c.id_brand = ?',$item->id_brand)->query()->fetchAll();
                        $newUrl = '/' .
                            str_replace(' ', '-', $item->parent_name) . '/' .
                            str_replace(' ', '-', $item->cat);
                        if (count($otherItemsWithSameCategory) > 0) {
                            $newUrl.='/brand/'.$item->brand;
                        }
                        $_SESSION['itemNotFound'] = 1;
                        $this->_redirect($newUrl, array('code' => 301));
                        exit;
                    }
                }

            } else {
                $item = $modCat->find($id)->current();
                $siteParams = $config->get('site');
                $newUrl =
                    $siteParams->protocol .
                    $siteParams->domain . '/' .
                    str_replace(' ', '-', $item->subdomain) . '/' .
                    str_replace(' ', '-', $item->myparent['latin_name_single']) . '/' .
                    str_replace(' ', '-', $item->brand) . '-' .
                    str_replace(array(' ', '/'), array('-', ''), $item->name);
                $this->_redirect(mb_strtolower($newUrl), array('code' => 301));
            }
        }

        $this->view->itemId = $itemId;
        if ($item) {
            $urlParts = explode('/', trim($_SERVER['REQUEST_URI'], '/'));
            if ($item['subdomain'] && ($urlParts[0] != $item['subdomain'])) {
                $this->_redirect('/' . $item['subdomain'] . '/' . $_SERVER['REQUEST_URI'], array('code' => 301));
                exit;
            }
/*
            if ($item->id_programm == 3 && !Alcotec_AuthFrontend::getInstance()->getUser()->manager && $item->id_brand != 3 && $item->id_brand != 13 && !in_array($item->id2, array(84151,84871,84870,84150,84872,84869,60193,60191,60192,60369,60189,60370,61830,64053,69540,41385,69536,69538,78931,80376,51394,22643,22644,82820,82822,82821,82818,82819,82816,82815,82817,82811,82813)) && !in_array($siteId, array(1, 3))) {
                $this->_helper->removeHelper('viewRenderer');
                $this->getResponse()->setHttpResponseCode(301);
                $newUrl = '/' .
                    str_replace(' ', '-', $item->parent_name) . '/' .
                    str_replace(' ', '-', $item->cat) . '/brand/' .
                    str_replace(' ', '-', $item->brand);
                $this->_redirect($newUrl);
            }
*/

            $modComments = new Comments();
            $this->view->comments = $modComments->getComments($item['id']);

            if ($page = $this->view->navigation($this->view->menu)->findOneById($item->id_category)) {
                $itemFullInfo = $modCat->getItemList("c.id = " . $item['id'])->query()->fetchAll();
                // var_dump($itemFullInfo);die;
                // $item['rent'] = $itemFullInfo[0]['rent'];
                $this->view->item = $item;
                $this->view->itemShows = $item->shows;
                $this->view->itemSales = $item->sales_4;

                /* Если товар связан и есть ID2 во внутренней базе - выводим в карточке товаров для менеджеров тип товара OR / PR / PKR */
                if ($item['id2'] == NULL) {
                    $this->view->type_program = 'Не связан с внутренней БД';
                } else {
                    $type_program=$db->fetchRow("SELECT * FROM `innerdb_items` WHERE `id` =".$item['id2']);
                    $this->view->type_program = $type_program["marketing"];
                }

                // var_dump($item);die;
                if ($item['rent'] >= 25) {
                    $itemPriceCategory = 8;
                } elseif ($item['rent'] > 12.5) {
                    $itemPriceCategory = 6;
                } elseif ($item['rent'] > 7.5) {
                    $itemPriceCategory = 3;
                } else {
                    $itemPriceCategory = 3;
                }
                $this->view->itemPriceCategory = $itemPriceCategory;

                $rates = Zend_Registry::get('currencies');
                $itemPrice = round($item->price * $rates[6]['rate']);
                $x1 = round(($itemPrice / ($item['rent'] / 100 + 1)) * 1.1);
                $x2 = round($itemPrice - ($itemPrice/ 100 * 15));
                $x3 = $x2 - $x1;
                $this->view->itemPrice = $itemPrice;
                $this->view->x1 = $x1;
                $this->view->x2 = $x2;
                $this->view->x3 = $x3;

                $rrc = $db->fetchAssoc("SELECT c.id, r.price, r.currency FROM catalog c INNER JOIN innerdb_items_recomended_prices r on c.id2 = r.id_item WHERE r.price > 0");
                $this->view->rrc = $rrc[$item['id']]['price'];

                $item->shows = $item->shows+1;
                $item->save();
                if ($action = $modActions->findAction($item['id'])) {
                    $this->view->action = $action;
                }
                $items2 = $modCat->getItemList("c.id_brand = {$item->id_brand} AND c.id_category={$item->id_category}");
                $items2Count = $items2->reset(Zend_Db_Select::LIMIT_COUNT)->reset(Zend_Db_Select::COLUMNS)->reset(Zend_Db_Select::HAVING)->reset(Zend_Db_Select::ORDER)->columns(array('count' => 'count(c.id)'))->query()->fetchAll();
                $this->view->items2Count = $items2Count[0]['count'];
                if ($this->_hasParam('all') || $siteId == 4) {
                    $this->view->items2 = $modCat->getItemList("c.id_brand = {$item->id_brand} AND c.id_category={$item->id_category}")->reset(Zend_Db_Select::ORDER)->order('name ASC')->group('name')->query()->fetchAll();
                } else
                    $this->view->items2 = $modCat->getItemList("c.id_brand = {$item->id_brand} AND c.id_category={$item->id_category}")->reset(Zend_Db_Select::ORDER)->order('name ASC')->group('name')->limit(15)->query()->fetchAll();
                $modVideo = new CatalogItemsVideo();
                if ($video = $modVideo->find(intval($item->id))->current()) {
                    $this->view->video = $video;
                }
                $this->view->otherBrands = $modCat->getItemList("c.id_category={$item->id_category}")->reset(Zend_Db_Select::LIMIT_COUNT)->reset(Zend_Db_Select::COLUMNS)->reset(Zend_Db_Select::HAVING)->reset(Zend_Db_Select::ORDER)->columns('distinct(c.id_brand)')->query()->fetchAll();

                $this->view->title = $item->{"title_{$siteId}"};
                $this->view->description = $item->{"description_{$siteId}"};
                $this->view->keywords = $item->{"keywords_{$siteId}"};
                if ($lang != 'ru')
                    $this->view->translation = $modCatTranslations->fetchRow("id_catalog = {$item->id}");

                $modFields = new Fields ();
                $this->view->fields = $modFields->getItemFields($item);

                $res = $this->view->fields;
                if ($links = $db->fetchAll("SELECT * FROM catalog_alternatives WHERE id_category={$item->id_category}")) {
                    foreach ($links as $link) {
                        if ($res[$link['id_group']]['fields'][$link['id_field']]['value']) {
                            switch ($link ['type']) {
                                case 'measure' :
                                    $filters['fields'][$link['id_field']] = intval($res[$link['id_group']]['fields'][$link ['id_field']]['value']);
                                    break;
                                case 'text' :
                                    $filters['fields'][$link ['id_field']] = $res[$link['id_group']]['fields'][$link['id_field']]['value'];
                                    break;
                                case 'select' :
                                    $filters['fields'][$link['id_field']] = intval($res[$link['id_group']]['fields'][$link ['id_field']]['value_id']);
                                    break;
                            }
                        }
                    }
                    if ($filters && $item->id_availability != 1) {
                        $filters['availability'] = 1;
                        $modCat->setFilters($filters);
                        $modCat->setCatId($item->id_category);
                        $items = $modCat->getItemList()->limit(4)->query()->fetchAll();

                        foreach ($items as $key => $val)
                            if ($val['id'] == $item->id)
                                unset($items[$key]);
                        if (count($items) > 0) {
                            $this->view->similarItems = $items;
                            $this->view->topsales_items = $items;
                            $this->view->altItems = true;
                        }
                    }
                }
                $this->view->navigation($this->view->menu)->findOneById($item->id_category)
                    ->addPage(
                        array('id' => $item->id_category . '_' . $item->id_brand,
                            'label' => $item->brand,
                            'uri' => $page->getHref() . '/brand/' . $item->brand
                        ));
                $this->view->navigation($this->view->menu)->findOneById($item->id_category . '_' . $item->id_brand)
                    ->addPage(array('id' => $item->id_category .'_'. $item->id, 'label' => $item->name, 'uri' => $_SERVER['REQUEST_URI']));
                $this->view->navigation($this->view->menu)->findOneById($item->id_category .'_'. $item->id)->setActive(true);

                if (is_array($_SESSION['items'])) {
                    foreach ($_SESSION['items'] as $vieweditms) {
                        if (in_array($item->id, $vieweditms))
                            $viewed = 1;
                    }
                } else {
                    $_SESSION['items'] = array();
                }
                if ($viewed != 1 or !$viewed) {
                    array_unshift($_SESSION['items'], array(
                        'id' => $item->id,
                        'brand' => $item->brand,
                        'name' => $item->name,
                        'img' => $item->images[0]['id'] . '_s.' . $item->images[0]['imgext'],
                        /*-------viewed-----------*/
                        'id_availability' => $item->id_availability,
                        'cat_onename' => $item->category_onename ? $item->category_onename : $item->cat_onename,
                        'cat' => $item->category ? $item->category : $item->cat,
                        'id_category' => $item->id_category,
                        'bonus_amount' => $item->bonus_amount,
                        'price' => $item->price,
                        'bestprice' => $item->bestprice,
                        'rent' => $item->rent,
                        'id_brand' => $item->id_brand,
                        'acttype' => $item->acttype,
                        'actid' => $item->actid,
                        'imgid' => $item->imgid,
                        'imgext' => $item->imgext,
                        'id_currency' => $item->id_currency,
                    ));
                    if (count($_SESSION ['items']) > 7)
                        array_pop($_SESSION['items']);
                }
                if ($item->isPartOfSet()) {
                    $this->view->sets = $item->getSetsInfo();
                }
                if ($assoc = $item->getAssocCateg()) {
                    foreach ($assoc as $assocCatId => $assocCatName)
                        if ($its = $item->getAssociated($assocCatId)) {
                            $assocItems[$assocCatId]['items'] = $its;
                            $assocItems[$assocCatId]['name'] = $assocCatName;

                            $assocItemsVmeste[$assocCatId]['items'] = $its;
                            $assocItemsVmeste[$assocCatId]['name'] = $assocCatName;
                        }

                    if ($item->id_category == 28) {
                        $izm = $modCat->getItemList('c.id_category=159 AND c.id_availability=1')->query()->fetchAll();
                        if (count($izm) > 0) {
                            $assocItems[159]['name'] = 'Измельчители';
                            $assocItems[159]['items'] = $izm;

                            $assocItemsVmeste[159]['name'] = 'Измельчители';
                            $assocItemsVmeste[159]['items'] = $izm;
                        }

                    }
                    if ($assocItems)
                        $this->view->assocItems = $assocItems;

                    if ($assocItemsVmeste)
                        $this->view->assocItemsVmeste = $assocItemsVmeste;
                        $this->view->assocItemsVmesteCount = $assocItemsVmeste;
                }
                if (Alcotec_AuthFrontend::getInstance()->getUser()->manager == 1) {
                    $modMonitoring = new Alcotec_Frontend_Model_MonitoringResults();
                    $this->view->monitoring = $modMonitoring->getResults($item->id);
                }
            } else {
                $this->_response->setHttpResponseCode(404);
                $this->_forward('page404','index');
                return;
            }
        } else {
            $this->_response->setHttpResponseCode(404);
            $this->_forward('page404','index');
            return;
        }
        $cache = Zend_Registry::get('cache');
        $siteId = Zend_Registry::get('siteId');
        $key = "similar_items_{$siteId}_{$this->view->item['id_category']}";
        $similarItems = $cache->load($key);
        if (!$similarItems) {
            $modCatalog = new Catalog();
            $sameCatItems = $modCatalog->getItemList("c.id_category={$this->view->item['id_category']}")->reset(Zend_Db_Select::ORDER)->order('c.name')->group('c.id')->query()->fetchAll();
            $similarItems = array();
            foreach ($sameCatItems as $item) {
                if (!$similarItems[$item['id_brand']]) {
                    $similarItems[$item['id_brand']]['id_brand'] = $item['id_brand'];
                    $similarItems[$item['id_brand']]['brand'] = $item['brand'];
                }
                $similarItems[$item['id_brand']]['items'][] = $item;
            }
            uasort($similarItems, function($a, $b) {
                return ($a['brand'] < $b['brand']) ? -1 : 1;
            });

            $cache->save($similarItems, $key);
        }

        $this->view->js_int = '
                <script src="/assets/js/product.js"></script>
            ';

        /*$this->view->css_int = '
                <link rel="stylesheet" href="/assets/css/product.css">
            ';*/


        $this->view->otherItems = $similarItems;
        // var_dump($similarItems['price']);die();
    }

    public function addCommentAction() {
        if ($this->_request->isPost()) {
            $post = $this->_request->getPost();
            $modComments = new Comments();
            $this->_helper->json(array('result' => $modComments->addComment($post)));
        }
    }

    public function catAction() {
        $catId = intval($this->_getParam('catid'));
//        if (strpos($_SERVER['REQUEST_URI'], "/i/")!==FALSE){
//            $this->_forward('item', null, null, ['itemName'=>$this->_getParam('i')]);
//        }
        if (strpos($_SERVER['REQUEST_URI'], 'catalog') != 0) {
            $page = $this->view->navigation($this->view->menu)->findOneById($catId);
            $other = substr($_SERVER['REQUEST_URI'], strpos($_SERVER['REQUEST_URI'], 'cat/' . $catId) + 4 + strlen($catId));
            if ($page) {
                $this->_redirect($page->getHref() . $other, array('code' => 301));
            }
        }
        $config = Zend_Registry::get('config');
        $arr = explode('/', $_SERVER['REQUEST_URI']);

        if (end($arr) == "") {
            $path = explode('/', $_SERVER['REQUEST_URI']);
              array_pop($path);
//            $this->_redirect(implode("/", $path), array('code' => 301));
        }
        if (strpos($_SERVER['REQUEST_URI'], 'sitemap.shtml')) {
            $this->_response->setHttpResponseCode(404);
            $this->_forward('page404','index');
            return;
        }
        if ($_SERVER['REQUEST_URI']=='/%D0%9C%D0%B5%D0%BB%D0%BA%D0%B0%D1%8F-%D0%B1%D1%8B%D1%82%D0%BE%D0%B2%D0%B0%D1%8F-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D0%B0/%D0%A8%D0%B2%D0%B5%D0%B9%D0%BD%D1%8B%D0%B5-%D0%BC%D0%B0%D1%88%D0%B8%D0%BD%D0%BA%D0%B8') {
            $this->_redirect('https://590.ua/smallbt');
            exit;
        }
        if ($this->_getParam('filter204') == 231) {
            $this->_redirect(str_replace('filter204/231', 'filter204/1595', $_SERVER['REQUEST_URI']), array('code' => 301));
        }

        if ($catId == 30 && $config->pupsic != 1) {
            $this->_redirect(str_replace('cat/30', 'cat/155', $_SERVER['REQUEST_URI']), array('code' => 301));
        }
        if ($catId == 23 && $config->pupsic != 1) {
            $this->_redirect(str_replace('cat/23', 'cat/189', $_SERVER['REQUEST_URI']), array('code' => 301));
        }
        if ($catId == 35 && $config->pupsic != 1) {
            $this->_redirect(str_replace('cat/35', 'cat/209', $_SERVER['REQUEST_URI']), array('code' => 301));
        }
        if ($catId == 8 && $config->pupsic != 1) {
            $this->_redirect(str_replace('cat/8', 'cat/210', $_SERVER['REQUEST_URI']), array('code' => 301));
        }
        if ($catId == 9 && $config->pupsic != 1) {
            $this->_redirect(str_replace('cat/9', 'cat/211', $_SERVER['REQUEST_URI']), array('code' => 301));
        }
        if ($catId == 189 && $config->pupsic != 1) {
            $this->_redirect(str_replace('cat/189', 'cat/212', $_SERVER['REQUEST_URI']), array('code' => 301));
        }
        if ($catId == 14 && $config->pupsic != 1) {
            $this->_redirect(str_replace('cat/14', 'cat/213', $_SERVER['REQUEST_URI']), array('code' => 301));
        }
        if ($this->_hasParam('brand')) {
            $params = $this->_getAllParams();
            if ($this->_getParam('brand') == 14) {
                $params['brand'] = 80;
                $this->_redirect($this->view->url($params), array('code' => 301));
            }
            if ($this->_getParam('brand') == 6) {
                $params['brand'] = 88;
                $this->_redirect($this->view->url($params), array('code' => 301));
            }
        }
        $modCat = new Categories();
        $siteId = Zend_Registry::get('siteId');

        $cat = $modCat->find($catId)->current();

        if ($cat['id']) {

            $this->view->css_int = '<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">';

            $this->view->js_int = '
                <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
                <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>
            ';
        }

        if ($cat['id'] && $page = $this->view->navigation($this->view->menu)->findOneById($cat['id'])) {
            $modNamedFilters = new NamedFilters();
            $namedFilters = $modNamedFilters->getAllByCategoryId($catId);
            $this->view->namedFilters = $namedFilters;
            $params = array_diff_key($this->_getAllParams(), array('controller' => '','route'=>'', 'action' => '', 'catid' => '', 'page' => ''));
            ksort($params);

            $modCatalog = new Catalog();
            $allBrands = array();
            foreach ($modCatalog->getAllBrands() as $b) {
                $allBrands[$b['id']] = $b['name'];
            }

            $assembledParams = array();
            foreach ($params as $key=>$val) {
                $assembledParams[] = $key;
                $assembledParams[] = $val;
            }
/*
            if (isset($namedFilters[join('/',$assembledParams)])){
                $this->_redirect($page->getHref().'/'.$namedFilters[join('/',$assembledParams)],array('code'=>301));
            }

            $currentUrl = urldecode($this->getRequest()->getRequestUri());
            $currentUrlArr = explode('/',$currentUrl);
            $namedFilter = $currentUrlArr[3];
            if (in_array($namedFilter, $namedFilters)){
                $filterVal = array_search($namedFilter, $namedFilters);
                $filterValArr = explode('/',$filterVal);
                $filterValArr2 = array();
                for ($s=0;$s<count($filterValArr);$s+=2){
                    $filterValArr2[$filterValArr[$s]] = $filterValArr[$s+1];
                }
                foreach ($filterValArr2 as $f=>$v){
                    $filterType = substr(explode('/',$f)[0],0,6);
                    if ($filterType=='filter'){
                        $filters ['fields'] [substr(explode('/',$f)[0], 6)] = explode('-',$v);
                    }
                    else{
                        $filtersArr = explode('/',$v);
                        $filterBrands = explode('-',end($filtersArr));
                        foreach ($filterBrands as $brandName){
                            if ($bId = array_search($brandName, $allBrands)){
                                $filters['brand'][] = $bId;
                            }
                        }
                    }
                }
            }
*/
            $this->view->categoryUrl = $page->getHref();
            $this->view->navigation($this->view->menu)->findOneById($cat['id'])->setActive(true);
            $this->view->route = 'cat' . $cat->id;
            $this->view->finalCat = $this->view->navigation($this->view->menu)->findOneById($cat['id'])->hasChildren();
            if ($this->getRequest()->isPost()) {
                $url = new Alcotec_Urlpath(array('baseUrl' => $this->view->navigation($this->view->menu)->findOneById($cat['id'])));
                $params = array_diff_key($this->getRequest()->getPost(), array('module' => '', 'catid' => '', 'action' => '', 'controller' => ''));
                foreach ($params as $k => $v)
                    if ($v && $v != 0)
                        $url->addParam($k, $v);
                $this->_redirect($url->url());
            }
            $this->view->catId = $cat['id'];
            $this->view->catName = $cat['name'];
            $this->view->cat = $cat;
            $db = Zend_Db_Table_Abstract::getDefaultAdapter();
            $this->view->title = $cat["title_{$siteId}"];
            $this->view->description = $cat->{"description_{$siteId}"};
            $this->view->cat_altnames = $cat->altnames;
            $this->view->rod_padezh = $cat->rod_padezh;
            $this->view->vin_padezh = $cat->vin_padezh;

            $sitesIds = [2,4,5,8,10,12,14];
            if ($this->view->finalCat && (in_array($siteId, $sitesIds) || ($_SERVER['HTTP_HOST'] == 'leroymerlin.alcotec.com.devel' || ($config->pupsic == 1 && $siteId == 6)))) {
                foreach ($this->view->navigation($this->view->menu)->findOneById($cat['id'])->getPages() as $page) {
                    $ids[] = $page->id;
                }
                $this->view->categories = $modCat->findCategories("c.id IN (" . join(',', $ids) . ")", $catId);
                if ($catId != 1) {
                    $images = $db->fetchAll("SELECT cc.id as cat, ci.id, ci.imgext from catalog c inner join catalog_categories cc on cc.id = c.id_category and cc.visible_{$siteId}=1 inner join catalog_brands cb on c.id_brand = cb.id and cb.visible_{$siteId}=1 inner join catalog_img ci on c.id = ci.id_catalog and ci.main=1 INNER JOIN catalog_items_sites_visibility cisv on c.id = cisv.item_id and cisv.site_id = {$siteId} where cc.id IN (" . join(',', $ids) . ") group by cc.id");
                } else {
                    $images = $db->fetchAll("SELECT cc.parent as cat, ci.id, ci.imgext from catalog c inner join catalog_categories cc on cc.id = c.id_category and cc.visible_{$siteId}=1 inner join catalog_brands cb on c.id_brand = cb.id and cb.visible_{$siteId}=1 inner join catalog_img ci on c.id = ci.id_catalog and ci.main=1 INNER JOIN catalog_items_sites_visibility cisv on c.id = cisv.item_id and cisv.site_id = {$siteId} where cc.id IN (SELECT id FROM catalog_categories WHERE parent in (" . join(',', $ids) . ")) group by cc.id");
                }
                foreach ($images as $img) {
                    $res[$img['cat']] = array('id' => $img['id'], 'ext' => $img['imgext']);
                    $brands[$img['cat']] = $db->fetchPairs("SELECT cb.id,cb.name FROM catalog c inner join catalog_brands cb on c.id_brand = cb.id INNER join catalog_items_sites_visibility cisv on c.id = cisv.item_id where cisv.site_id = {$siteId} AND cb.visible_{$siteId} = 1 and c.id_category = {$img['cat']} GROUP by cb.id  ");
                }

                $this->view->img = $res;
                $this->view->brands = $brands;
                $this->view->catText = $modCat->getCatText($cat['id']);
                if ($config->pupsic != 1 || ($config->pupsic == 1 && $siteId == 6))
                    return true;
            }
            preg_match('/page\/(\d+)/', $_SERVER['REQUEST_URI'], $pageNumberMatch);
            $pageNumber = $pageNumberMatch[1];

            $this->view->firstPageUrl = rtrim(preg_replace('/page\/(\d+)/','',$_SERVER['REQUEST_URI']),'/');
            if ($this->_hasParam('brand')) {
                if (preg_match('/[A-Za-zА-Яа-я]/', $this->_getParam('brand')) == 0) {
                    $bIds = array_map('intval', explode('-', $this->_getParam('brand')));
                    $brands = array();
                    foreach ($bIds as $bId) {
                        $brands[] = $allBrands[$bId];
                    }
                    sort($brands);
                    $this->_redirect($this->view->url(array('brand' => join('_', $brands))), array('code' => 301));
                    exit;
                }
                foreach (explode('_', $this->_getParam('brand')) as $brand) {
                    if ($bId = array_search($brand, $allBrands)) {
                        $filters['brand'][] = $bId;
                        $brands[] = $allBrands[$bId];
                    } elseif ($bId = array_search(strtolower($brand), array_map('strtolower', $allBrands))) {
                        $filters['brand'][] = $bId;
                        $brands[] = $allBrands[$bId];
//                        $setRedirect = true;
                    } else {
                        $this->_redirect($this->view->url(array('brand' => NULL)), array('code' => 301));
                        return;
                    }
                }
                if (count($brands)===1) {
                    $this->view->singleBrand = true;
		    $this->view->countBrand = 1;
                    $page->addPage(
                            array('id' => $catId . '_' . $filters['brand'][0],
                                'label' => $brands[0],
                                'uri' => $page->getHref() . '/brand/' . $brands[0]
                            ));
                    $this->view->navigation($this->view->menu)->findOneById($catId . '_' . $filters['brand'][0])->setActive(true);
                } elseif (count($brands >= 1)) {
		    $this->view->countBrand = count($brands);
		}
            }
            if ($this->_getParam('availability') === '1')/*mycom*/
                $filters['availability'] = 1;
            if ($this->_getParam('salon'))
                $filters['salon'] = 1;
            if ($this->_getParam('specprice') == 'only') {
                $filters['specprice'] = true;
            } elseif ($this->_hasParam('specprice')) {
                $this->_response->setHttpResponseCode(404);
                $this->_forward('page404','index');
                return;
            }
            if ($this->_getParam('sale') == 'only') {
                $filters['sale'] = true;
            } elseif ($this->_hasParam('sale')) {
                $this->_response->setHttpResponseCode(404);
                $this->_forward('page404','index');
                return;
            }
            if ($pregFilters = preg_grep('/(?<=filter)[1-9]{1}\d*/', array_keys($this->_getAllParams()))) {
                foreach ($pregFilters as $i)
                    if ($this->_getParam($i))
                        $filters['fields'][substr($i, 6)] = array_map('intval', explode('-', $this->_getParam($i)));
            }
            $this->view->filtersCount = count($filters['fields']);

            if ($pregPrice = preg_grep('/(?<=price)(\S+)/', array_keys($this->_getAllParams()))) {

                foreach ($pregPrice as $p)
                    if ((int)$this->_getParam($p))
                        $filters['price'][substr($p, 5)] = $this->_getParam($p);
            }
            if ($filters) {
                $params = array_diff_key($this->_getAllParams(), array('utm_source'=>'','utm_campaign'=>'','utm_medium'=>'','utm_content'=>'','controller' => '', 'action' => '', 'catid' => '', 'page' => '','sort'=>'','availability'=>'','sale'=>'','route'=>'','specprice'));
                $rightFilters = $params;
                ksort($rightFilters);
                if (join('', array_keys($params)) != join('', array_keys($rightFilters))) {
                    $this->_response->setHttpResponseCode(404);
                    $this->_forward('page404','index');
                    return;
                }

            }
            $modCatalog->setCatId($cat['id']);

            $modCatalog->setFilters($filters);
            if (empty ($filters)) {
                $this->view->catText = $modCat->getCatText($cat['id']);
            } elseif (in_array($siteId, array(2, 5)) && $filters['brand']) {
                $modSeoTexts = new SeoTexts();
                if ($text = $modSeoTexts->fetchRow(array("id_site = {$siteId}", "id_category = {$cat['id']}", "id_brand = {$filters['brand']}")))
                    $this->view->catText .= '<br />' . $text['text'];
            }
            //$t = pinba_timer_start(array("group"=>"mysql", "operation"=>"select items"));
            $select = $modCatalog->getItemList();
            if ($this->_getParam('sort') != 'popularity') {
                $select->reset(Zend_Db_Select::ORDER)->order(new Zend_Db_Expr("(c.show_index_{$siteId}=1 AND c.id_availability != 3) DESC"))->order('(CASE c.id_availability WHEN 1 THEN 0 WHEN 4 THEN 1 WHEN 2 THEN 2 WHEN 3 THEN 3 END)')->order(new Zend_Db_Expr('price ASC'));
                $sort = 'popularity';
            } else {
                $sort = 'price';
            }

            if ($siteId == 2 && in_array($_SERVER['REQUEST_URI'], array('/catalog/cat/23/brand/9', '/catalog/cat/14', '/catalog/cat/21/brand/14', '/catalog/cat/155', '/catalog/cat/21/brand/6'))) {
                if ($this->_getParam('sort') != 'price') {
                    $select->reset(Zend_Db_Select::ORDER)->order('(CASE c.id_availability WHEN 1 THEN 0 WHEN 4 THEN 1 WHEN 2 THEN 2 WHEN 3 THEN 3 END)')->order('price ASC');
                    $this->view->sort = 'price';
                }
            }

            if ($siteId == 6 && $config->pupsic != 1)
                $select->reset(Zend_Db_Select::ORDER)->order('c.name ASC');
            $paginatorParams = array_diff_key($this->getRequest()->getParams(), array('module' => '', 'route' => '', 'catid' => '', 'action' => '', 'controller' => ''));
            $cache = Zend_Registry::get('cache');
            $baseUrl = $this->view->navigation($this->view->menu)->findOneById($cat['id'])->getHref();
            $this->view->baseUrl = $baseUrl;
            if ($namedFilter) {
                $baseUrl.='/'.$namedFilter;
            }
            $urlpath = new Alcotec_Urlpath(array('baseUrl' => $baseUrl, 'urlParams' => $paginatorParams));
            if ($filters['price']) {
                $currencyNamespace = new Zend_Session_Namespace('Currency');
                $rates = $db->fetchPairs('SELECT id, rate FROM catalog_currencies');
                $db = Zend_Db_Table_Abstract::getDefaultAdapter();
                $newSelect = $db->select()->from(array('x' => $select));
                foreach ($filters['price'] as $k => $v) {
                    if ($currencyNamespace->active != 6)
                        $v = $v / ($rates[6] / $rates[$currencyNamespace->active]);
                    if ($k == '_from')
                        $from = $v ? intval($v) : '0';
                    if ($k == '_to')
                        $to = $v ? intval($v) : '0';
                }
                if (!$from)
                    $from = 0;
                if (!$to)
                    $to = 99999999;
                $newSelect->having("price >= {$from} AND price <= {$to}");
                $select = $newSelect;
            }
//var_dump($select);die;
            $paginator = Alcotec_Paginator::factory($select, $urlpath);
            $paginator->setPageRange(3);

            if (!$this->_hasParam('perPage')) {
                $paginator->setItemsPerPage(24);
            }

//var_dump($paginator);die;
            $this->view->paginator = $paginator->setCurrentPageNumber($pageNumber);
            $this->view->pages = $paginator->getPages();
            $cacheKey = md5(serialize($paginatorParams)) . $cat['id'];
            $items = $paginator->getCurrentItems();
            foreach ($items as &$curItem) {
                $currentRent = floatval($curItem['rent']);
                $curItem['rent_index'] = ($currentRent > 25) ? 8 : (($currentRent > 12.5) ? 6 : 3);

                $rates = Zend_Registry::get('currencies');
                $itemPrice = $curItem['price'] * $rates[6]['rate'];
                $x4 = round(($itemPrice / ($currentRent / 100 + 1)) * 1.1);
                $x5 = round($itemPrice - ($itemPrice/ 100 * 15));
                $x6 = round($x5 - $x4);
                $curItem['x_index'] = ($x6 > 0) ? 1 : 0;
            }
            // var_dump($items[0]);die;

            // $this->view->itemPrice = $itemPrice;
            // $this->view->x4 = $x4;
            // $this->view->x5 = $x5;
            // $this->view->x6 = $x6;

            $this->view->items = $items;

//var_dump($this->view->items);die;
            //pinba_timer_stop($t);
            if (intval($this->_getParam('page')) > $paginator->getPages()->pageCount) {
                $this->_redirect(preg_replace('/\/page\/\d+/', '', $_SERVER['REQUEST_URI']), array('code' => 301));
            }
            if ($paginator->getPages()->pageCount == 0 && $this->_getParam('page')) {
                $this->_redirect($this->view->navigation($this->view->menu)->findOneById($catId)->getHref(),array('code'=>301));
                return;
            }
            $catFilers = $modCatalog->getCatFilters($cat['id'], $filters);
            $this->view->filters = $catFilers;
            if (strpos($_SERVER['REQUEST_URI'],'only-filters')!=FALSE) {
                echo $this->view->render('_filter_ajax.tpl');
                exit;
            }
            $brandId = $this->_hasParam('brand') ? intval($this->_getParam('brand')) : NULL;
            if ($brandId && $siteId == 4 && $config->pupsic == 1) {
                $this->view->navigation($this->view->menu)->findOneById($catId)->addPage(array('id' => $catId * $brandId, 'label' => $cat['name'] . ' ' . $this->view->allbrands[$brandId], 'route' => 'cat', 'action' => 'cat', 'controller' => 'catalog', 'params' => array('catid' => $catId, 'brand' => $brandId)));
            }
            if ($filters['fields']) {
                $acceptedFilters = array();
                foreach ($catFilers['select'] as $filter) {
                    if ($filter['applied']) {
                        $accepted['name'] = $filter['name'];
                        $accepted['values'] = array();
                        foreach ($filter['values'] as $value) {
                            if ($value['selected']) {
                                $accepted['values'][] = $value['value'];
                            }
                        }
                        $acceptedFilters[] = $accepted;
                    }
                }
                $this->view->accepted_filters = $acceptedFilters;
            }

            $modArticles = new Articles();
            $this->view->articles = $modArticles->fetchAll("site_id = {$siteId} and visible = '1'", 'date DESC', 8, 0)->toArray();
            $this->view->article = $modArticles->getArticle($catId, $filters['brand']);
            $allowedKeys = [
                'brand',
                'page',
                'filter',
                'route',
                'controller',
                'action',
                'catid',
                'price',
                'utm_',
                'utm_source',
                'utm_medium',
                'utm_campaign',
                'utm_term',
                'utm_content',
                'fb_action_ids',
                'fb_action_types',
                'gclid',
                'sort',
                'availability',
                'sale',
                'specprice',
            ];
            foreach ($this->_getAllParams() as $k=>$v) {
                $bad = true;
                foreach ($allowedKeys as $key) {
                    if (strpos($k,$key)!==FALSE) {
                        $bad = FALSE;
                    }
                }
                if ($bad) {
                    $this->_response->setHttpResponseCode(404);
                    $this->_forward('page404','index');
                    return;
                }
            }
        } else {
            $this->_response->setHttpResponseCode(404);
            $this->_forward('page404','index');
            return;
        }
    }

    public function brandAction() {
        $requestUri = $this->getRequest()->getRequestUri();
        if ($requestUri != strtolower($requestUri)) {
            $this->_redirect(strtolower($requestUri), ['code'=>301]);
        }
        $siteId = Zend_Registry::get('siteId');
        $brandId = $this->_hasParam('brandId') ? intval($this->_getParam('brandId')) : NULL;
        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        if ($brand = $db->fetchRow("SELECT * FROM catalog_brands where id = '$brandId}' and visible_{$siteId}=1")) {
            if (strpos($_SERVER['REQUEST_URI'], 'brand') != 0) {
                $this->_redirect(str_replace('/catalog/brand/' . $brandId, '/' . $brand->name, $_SERVER['REQUEST_URI']),array('code'=>301));
            }
            $this->view->brand = $brandId;
            $this->view->brandName = $brand['name'];

            $uriParts = explode('/',$_SERVER['REQUEST_URI']);
            if (urldecode(end($uriParts))=='Встраиваемая-техника') {
                $and = ' AND cc2.id =  7 ';
            }
            if (urldecode(end($uriParts))=='Отдельностоящая-техника') {
                $and = ' AND cc2.id =  17 ';
            }
            $cats = $db->fetchAll("SELECT cc.id, cc.name as name,cc2.name as parent from catalog_categories cc inner join catalog_categories cc2 on cc.parent = cc2.id where cc.id = ANY(SELECT distinct(id_category) FROM catalog INNER JOIN catalog_items_sites_visibility cisv on catalog.id = cisv.item_id and cisv.site_id = {$siteId} where id_brand = {$brandId} and archive!=1) and cc.visible_{$siteId}=1 and cc2.visible_{$siteId}=1 {$and} order by cc2.left_key,cc.name");
            $result = array();
            foreach ($cats as $cat) {
                if ($result[$cat['parent']]) {
                    $result[$cat['parent']][$cat['id']] = array('name' => $cat['name'], 'route' => 'cat' . $cat['id']);
                } else {
                    $result[$cat['parent']][$cat['id']] = array('name' => $cat['name'], 'route' => 'cat' . $cat['id']);
                }
            }

            $modArticles = new Articles();
            $this->view->articles = $modArticles->fetchAll("site_id = {$siteId} and visible = '1'", 'date DESC', 8, 0)->toArray();

            $this->view->title = $brand["title_{$siteId}"];
            $this->view->description = $brand["description_{$siteId}"];
            $this->view->keywords = $brand["keywords_{$siteId}"];

            $this->view->cats = $result;
            $modcatalog = new Catalog();
            $modcatalog->setArchive(1);
            $pageNumber = $this->getRequest()->getParam('page');
            $config = Zend_Registry::get('config');
            $select = $modcatalog->getItemList()->where("c.id_brand = '{$brandId}' {$and}");

            if ($siteId == 2 && $brandId == 80) {
                $select->reset(Zend_Db_Select::ORDER)->order('price ASC');
            }
            $urlpath = new Alcotec_Urlpath(array('baseUrl' => "/{$brand['name']}", 'urlParams' => array_diff_key($this->getRequest()->getParams(), array('module' => '', 'brandid' => '', 'brandId' => '', 'action' => '', 'route' => '', 'controller' => ''))));
            $paginator = Alcotec_Paginator::factory($select, $urlpath);
            $paginator->setItemsPerPage(19);
            $this->view->firstPageUrl = rtrim(preg_replace('/page\/(\d+)/','',$_SERVER['REQUEST_URI']),'/');
            $this->view->paginator = $paginator->setCurrentPageNumber($this->_getParam('page'));
            $this->view->items = $paginator->getCurrentItems();
            $this->view->brandText = $db->fetchOne("SELECT text FROM catalog_brands_texts WHERE id_brand = {$brandId} and site={$siteId}");
            $this->view->navigation($this->view->menu)->findOneById(1)->addPage(array('id' => $brandId, 'label' => $this->view->allbrands[$brandId], 'visible' => false, 'action' => 'brand', 'controller' => 'catalog', 'params' => array('brandid' => $brandId)));

        } else {
            $this->_response->setHttpResponseCode(404);
            $this->_forward('page404','index');
            return;
        }
    }

    public function giftsAction() {
        if ($this->_hasParam('price')) {
            $price = intval($this->_getParam('price'));
            if ($price < 50) {
                $this->view->error = 'Ничего не найдено';
                return;
            }
            $modCatalog = new Catalog();
            $filters['price']['_from'] = 0;
            $filters['price']['_to'] = $price;
            $modCatalog->setFilters($filters);
            $select = $modCatalog->getItemList();
            $select->where('cc.parent not IN (51, 111, 180)');
            $select->where('cc.id not IN (66)');
            $select->where('c.id_availability = 1');
            $currencyNamespace = new Zend_Session_Namespace('Currency');
            $db = Zend_Db_Table_Abstract::getDefaultAdapter();
            $rates = $db->fetchPairs('SELECT id, rate FROM catalog_currencies');
            $newSelect = $db->select()->from(array('x' => $select));
            foreach ($filters['price'] as $k => $v) {
                if ($currencyNamespace->active != 6)
                    $v = $v / ($rates[6] / $rates[$currencyNamespace->active]);
                if ($k == '_from')
                    $from = $v ? intval($v) : '0';
                if ($k == '_to')
                    $to = $v ? intval($v) : '0';
            }
            if (!$from) {
                $from = 0;
            }
            if (!$to) {
                $to = 99999999;
            }

            $newSelect->having("price >= {$from} AND price <= {$to}");
            $select = $newSelect;
            if ($this->_getParam('sort') != 'popularity') {
                $select->reset(Zend_Db_Select::ORDER)->order(new Zend_Db_Expr('price ASC'));
            }
            $urlpath = new Alcotec_Urlpath(array('baseUrl' => '/catalog/gifts', 'urlParams' => array_diff_key($this->getRequest()->getParams(), array('module' => '', 'action' => '', 'route' => '', 'controller' => ''))));
            $paginator = Alcotec_Paginator::factory($select, $urlpath);
            $paginator->setItemsPerPage(24);

            $this->view->paginator = $paginator->setCurrentPageNumber($this->_getParam('page'));
            $this->view->items = $paginator->getCurrentItems();
        }
    }

    public function updateBonusAmountAction() {
        $this->_helper->removeHelper('viewRenderer');
        $modCatalog = new Catalog();
        $modCatalog->updateBonusAmount();
    }

    public function updateVipPriceAction() {
        $this->_helper->removeHelper('viewRenderer');
        $modCatalog = new Catalog();
        $modCatalog->updateVipPrice();
    }

    public function autocompleteAction() {
        $q = $this->_hasParam('q') ? $this->_getParam('q') : NULL;
        $limit = $this->_hasParam('l') ? intval($this->_getParam('l')) : NULL;
        $result = array();
        if ($q) {
            $search = $text = str_replace(array(' ', '\'', '-'), '', $q);
            $modCatalog = new Catalog();
            $result = $modCatalog->search($search, $limit);
        }
        $this->_helper->json($result);
    }

    public function exportAction() {
        $modExport = new Export();

        $modExport->generateGoogleTxt();
        $modExport->generateGoogleCsv();
        $modExport->generateGoogleAllCsv();
		$modExport->generateTrafmagXml();
        $modExport->generateYML(4);
        $modExport->generateZprice(4);
        $modExport->generatePrivatmarket(4);
        $modExport->generateYuspXml(4);

        $modExport->generateGiftXML(4);
		$modExport->generateYMLrozetka(4);
        // $modExport->adtarget();
        // $modExport->generateTPYML(4);
        // $modExport->generateKidsXml(4);
        // $modExport->xls();
        parent::exportAction();
    }

	public function exportymlrozetkaAction() {
        $modExport = new Export();
        $modExport->generateYMLrozetka(4);
    }

    public function setAction() {
        if (!$this->_hasParam('setId'))
            throw new Exception('set not found');
        $setId = intval($this->_getParam('setId'));
        $modSets = new Sets();
        $modCatalog = new Catalog();
        $set = $modSets->getSet($setId);
        if ($set['visible'] == 0) {
            $this->_response->setHttpResponseCode(404);
            $this->_forward('page404','index');
            return;
        }

        $this->view->set = $set;
        $this->view->setItems = $modSets->getSetItems($setId);
    }

    public function commentsAction() {
        $this->_response->setHttpResponseCode(404);
        $this->_forward('page404','index');
        return;
        //$this->_helper->removeHelper('viewRenderer');
        require_once(APPLICATION_PATH . '/views/__helpers/Iurl.php');
        $helper = new Zend_View_Helper_Iurl();
        $modCatalog = new Catalog();
        $select = $modCatalog->getItemList();
        $select->join(array('com' => 'comments'), 'c.id=com.item_id', array());
        foreach ($select->query()->fetchAll() as $item) {
            echo $helper->iurl(array('parent' => $item['parentname'], 'cat' => $item['cat_onename'], 'brand' => $item['brand'], 'item' => $item['name'])) . PHP_EOL;
        }
        Zend_Debug::dump($helper);
        exit;
    }

    /*
    public function fixseoAction() {
        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $modCategories = new Categories();
        foreach ($db->fetchAll("SELECT * FROM named_filters") as $row){
            $category = $modCategories->find($row['category_id'])->current();
            $parent = $modCategories->find($category->parent)->current();
            $url = '590.ua/'.urlencode(str_replace(' ','-',$parent->name)).'/'.urlencode(str_replace(' ','-',$category->name)).'/'.$row['url'];
            $newUrl = '590.ua/'.urlencode(str_replace(' ','-',$parent->name)).'/'.urlencode(str_replace(' ','-',$category->name)).'/'.urlencode($row['name']);
            $oldSeoRow = $db->fetchRow($db->select()->from('seo')->where('uri = ?',$url));
            if ($oldSeoRow){
                $db->update('seo',array('uri'=>$newUrl),"id = {$oldSeoRow['id']}");
            }
        }
        exit;
    }
    */

    // public function trafmagAction() {
        // $modCatalog = new Catalog();
        // require_once(APPLICATION_PATH . '/views/__helpers/Price.php');
        // require_once(APPLICATION_PATH . '/views/__helpers/Iurl.php');
        // $priceHelper = new Zend_View_Helper_Price();
        // $iUrl = new Zend_View_Helper_Iurl();
        // $modCategories = new Categories();
        // $categories = $modCategories->all();
        // $items = $modCatalog->getItemList()->query()->fetchAll();
        /* $xml = new SimpleXMLElement("<?xml version='1.0' encoding='utf-8'?><catalog></catalog>"); */
        // $categoriesXml = $xml->addChild('categories');
        // foreach ($categories as $category) {
        //     @$categoryXml = $categoriesXml->addChild('category', $category['name']);
        //     $categoryXml->addAttribute('id',$category['id']);
        // }
        // $offersXml = $xml->addChild('offers');
        // foreach ($items as $item) {
        //     $offerXml = $offersXml->addChild('offer');
        //     $offerXml->addAttribute('id',$item['id']);
        //     $offerXml->addAttribute('available','true');
        //     $subdomain = !empty($categories[$item['id_category']]['subdomain']) ? $categories[$item['id_category']]['subdomain'].'.' : '';
        //     $offerXml->url = 'https://590.ua/' . $subdomain . $iUrl->iurl(
        //             array(
        //                 'parent'=>$item['parentname'],
        //                 'cat'=>$item['cat_onename'],
        //                 'brand'=>$item['brand'],
        //                 'item'=>$item['name'],
        //             ));

        //     $itemPrice = $priceHelper->price($item['price'], $item['id_currency']);
        //     if ($item['specprice']&& $item['bdprice'] > $item['price'] && ($item['bdprice']-$item['price'])/$item['price'] > 0.01) {
        //         $oldPrice = $priceHelper->price($item['bdprice'], $item['id_currency']);
        //         $offerXml->addChild('oldprice', $oldPrice);
        //         $offerXml->addChild('skidka', round(($item['bdprice']-$item['price'])/$item['bdprice']*100));
        //     } else {
        //         $offerXml->addChild('oldprice', '');
        //         $offerXml->addChild('skidka', '');
        //     }
        //     $offerXml->addChild('price', $itemPrice);
        //     $offerXml->addChild('currencyId', 'UAH');
        //     $offerXml->addChild('categoryId', $item['id_category']);
        //     $offerXml->addChild('image', "/images/catalog/{$item['imgid']}.{$item['imgext']}");
        //     $offerXml->addChild('vendor', $item['brand']);
        //     $offerXml->model = $item['name'];
        // }
        // header ('Content-type: text/xml');
        // $xml->asXML('/tmp/trafmag.xml');
        // readfile('/tmp/trafmag.xml');
        // die;
    // }

    public function getMenuAction() {

    }

    public function compareAction() {
        $ns = new Zend_Session_Namespace('compare');
        if ($this->_hasParam('items')) {
            if ($ids = explode(',', $this->_getParam('items'))) {
                if (!$ns->url) {
                    $ns->url = $_SERVER['HTTP_REFERER'];
                }
                $db = Zend_Db_Table_Abstract::getDefaultAdapter();
                foreach ($ids as $id)
                    $result[] = $db->quote($id);
                $modCatalog = new Catalog();

                $idsSql = join(',', $result);
                $modCatalog->setArchive(1);
                $select = $modCatalog->getItemList('c.id IN (' . $idsSql . ')');
                $select2 = $select;
                $this->view->items = $db->fetchAll($select);
                $this->view->colspan = count($this->view->items) + 1;
                $modFields = new Fields();
                $modFieldsGroups = new FieldsGroups();
                $modFieldsValues = new FieldsValues();
                $siteId = Zend_Registry::get('siteId');
                $catIds = $db->fetchAll("SELECT DISTINCT(c.id_category) FROM catalog c where id in ({$idsSql})");
                if (count($catIds) > 1) {
                    $this->view->error = 'Нельзя сравнивать товары из разных категорий';
                    return false;
                }
                $catId = $catIds[0]['id_category'];
                $this->view->catId = $catId;
                $this->view->compareBrands = $db->fetchPairs("SELECT id, name FROM catalog_brands where id in (SELECT distinct(id_brand) from catalog where id_category = {$catId} and visible_{$siteId}=1) and visible_{$siteId}=1");
                $prodFieldsGrp = $modFieldsGroups->fetchAll("id_category = {$catId}");
                $rawStats = $modFieldsValues->fetchAll("id_item in ({$idsSql})")->toArray();
                foreach ($prodFieldsGrp as $grp) {
                    $res[$grp->id] = $grp->toArray();
                    foreach ($grp->findDependentRowset('Fields') as $rest) {
                        $res[$grp->id]['fields'][$rest->id] = $rest->toArray();
                        switch ($rest->type) {
                            case 'select' :
                                foreach ($rest->findDependentRowset('FieldsSelectValues') as $val)
                                    $res[$grp->id]['fields'][$rest->id]['values'][$val->id] = $val->value;
                                foreach ($rawStats as $stat) {
                                    if ($stat['id_field'] == $rest->id) {
                                        $values[] = $stat['value'];
                                        $res[$grp->id]['fields'][$rest->id]['itemvalues'][$stat['id_item']] = $res[$grp->id]['fields'][$rest->id]['values'][$stat['value']];
                                    }
                                }
                                break;
                            case 'measure' :
                                $val = $rest->findDependentRowset('FieldsMeasures')->current();
                                $res[$grp->id]['fields'][$rest->id]['measure'] = $val->measure;
                                foreach ($rawStats as $stat) {
                                    if ($stat['id_field'] == $rest->id) {
                                        $values[] = $stat['value'];
                                        $res[$grp->id]['fields'][$rest->id]['itemvalues'][$stat['id_item']] = $stat['value'];
                                    }
                                }
                                break;
                            case 'text' :
                                $val = $rest->findDependentRowset('FieldsMeasures')->current();
                                foreach ($rawStats as $stat) {
                                    if ($stat['id_field'] == $rest->id) {
                                        $values[] = $stat['value'];
                                        $res[$grp->id]['fields'][$rest->id]['itemvalues'][$stat['id_item']] = $stat['value'];
                                    }
                                }
                                break;
                        }
                        if ($values)
                            $res[$grp->id]['fields'][$rest->id]['class'] = count(array_unique($values)) > 1 ? 'identical_on' : 'identical_out';
                        unset($values);
                    }
                }

                $this->view->body_class = 'compare-page';

                $this->view->fields = $res;
                $this->view->navigation($this->view->menu)->findOneById(1)
                    ->addPage(array('id' => null, 'label' => 'Сравнение', 'action' => 'compare', 'controller' => 'catalog'));

            }
        } else {
            $this->_helper->removeHelper('viewRenderer');
            if ($ns->url) {
                $url = $ns->url;
                unset($ns->url);
                $this->_redirect($url);
            } else {
                $this->_response->setHttpResponseCode(404);
                $this->_forward('page404','index');
                return;
            }
        }
    }

    public function aaaaAction() {
        exit;
        $modCatalog = new Catalog();
        $items = $modCatalog->getItemList()->having('cost > price')->query()->fetchAll();
        foreach ($items as $item) {
            echo "{$item['id2']};{$item['brand']};{$item['name']};{$item['price']};{$item['cost']},\n";
        }
        exit;
    }

    public function priceNotifyAction() {
        if ($this->_request->isPost()) {
            $post = $this->_request->getPost();
            $modCatalog = new Catalog();
            if ($item = $modCatalog->find(intval($post['itemId']))->current()) {
                $modPN = new PriceNotifications();
                $rates = Zend_Registry::get('currencies');
                $email = $post['email'];
                if(filter_var($email, FILTER_VALIDATE_EMAIL)) {
                    $itemPrice = round($item->price * $rates[6]['rate']);
                    $modPN->insert([
                        'item_id'=>$item->id,
                        'insert_date'=>date('Y-m-d'),
                        'price'=> $itemPrice,
                        'notification_sent'=>0,
                        'email'=>$email,
                    ]);
                }

                $transport = new Zend_Mail_Transport_Smtp('localhost');
                $mail = new Zend_Mail('UTF-8');
                $mail->addTo('t2215@yandex.ru');
                $mail->addCc('info@alcotec.com.ua');
                $mail->setFrom('no-reply@590.ua');
                $mail->setSubject('Зарпрос на уведомление о понижении цены');

                $text = "{$email}\n";
                $text .= "Цена {$item->brand} {$item->name} на момент запроса:  {$itemPrice}грн";

                $mail->setBodyText($text);
                $mail->send($transport);

            }
        }

        $this->_redirect($_SERVER['HTTP_REFERER']);
    }

    public function checkPriceNotificationsAction() {
        $modPN = new PriceNotifications();
        $rates = Zend_Registry::get('currencies');
        $modCatalog = new Catalog();
        $toCheck = $modPN->fetchAll('notification_sent = 0');
        $transport = new Zend_Mail_Transport_Smtp('localhost');
        require_once(APPLICATION_PATH . '/views/__helpers/Iurl.php');
        $urlHelper = new Zend_View_Helper_Iurl();
        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        foreach ($toCheck as $row) {
            $item = $modCatalog->find($row->item_id)->current();
            if (!$item) {
                continue;
            }
            $itemPrice = $item->price*$rates[6]['rate'];
            if ($itemPrice/$row->price > 0.97) {
                continue;
            }

            $catInfo = $db->fetchRow("SELECT * FROM catalog_categories where id = {$item->id_category}");
            $itemUrl = $urlHelper->iurl(array('cat_latin'=>$catInfo['latin_name_single'],'parent'=>urlencode(str_replace(' ','-',$item['parent_name'])),'cat'=>urlencode(str_replace(' ','-',$item['cat_onename'])), 'brand'=>urlencode(str_replace(' ','-',$item['brand'])),'item'=>urlencode(str_replace(array(' ','/'),array('-',''),$item['name']))));

            $mail = new Zend_Mail('UTF-8');
            $mail->addTo($row->email);
            $mail->addCc('info@alcotec.com.ua');
            $mail->setFrom('no-reply@590.ua');
            $mail->setSubject('Уведомление о понижении цены');
            $text = "На Ваш запрос по модели <a href='https://590.ua{$itemUrl}'>{$item->brand} {$item->name}</a> произошло снижение цены. Будем Вам рады предложить эту модель. <br /><br />";
            $text .= "С уважением, <a href='https://590.ua'>590.ua</a>";
            $mail->setBodyHtml($text);
            $mail->send($transport);

            $row->notification_sent  = 1;
            $row->save();
        }
        exit;
    }

    public function mgAction() {
        // $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        // ini_set('display_errors',1);
        // $smarty = new Smarty();
        // $smarty->left_delimiter = "{{";
        // $smarty->right_delimiter = "}}";
        // $smarty->compile_dir = '/tmp';
        // $smarty->template_dir = APPLICATION_PATH.'/../vadyus/';
        // $smarty->assign('ticker',(new Goods()));
        // $smarty->assign('M','MarketGid');
        // $smarty->assign('subnets',$db->fetchAll('SELECT * from subnets'));
        // $js = $smarty->fetch('adhesive.js');
        // echo $js;
        // exit;
    }
}

class Goods implements ArrayAccess {

    public function getImageSizeAttributes() {
        return '';
    }

    public function usePlug() {
        return false;
    }

    public function getEncodingToString() {
        return 'utf-8';
    }

    public function offsetExists($offset) {
        // TODO: Implement offsetExists() method.
    }

    public function offsetGet($offset) {
        if ($offset=='id'){
            return 8;
        }
    }

    public function offsetSet($offset, $value) {
        // TODO: Implement offsetSet() method.
    }

    public function offsetUnset($offset) {
        // TODO: Implement offsetUnset() method.
    }

    public function getBlocksAddress() {
        // return 'http://aa-gb.marketgid.com/8/';
    }
}
