<?php

/**
 * Error controller
 *
 * @uses       Zend_Controller_Action
 * @package    QuickStart
 * @subpackage Controller
 */
class ErrorController extends Alcotec_Frontend_Controller_ErrorController {

    public function errorAction() {

        $errors = $this->_getParam('error_handler');

        switch ($errors->type) {
            case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_CONTROLLER :
            case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_ACTION :
                // 404 error -- controller or action not found
                $this->getResponse()->setHttpResponseCode(404);
                $this->view->message = 'Page not found';
                break;

            default :
                // application error
                $this->getResponse()->setHttpResponseCode(500);
                $this->view->message = 'Application error';
                break;
        }
        $this->view->exception = $errors->exception;
        $this->view->request = $errors->request;
        if (!strstr($errors->exception->getMessage(),'Invalid controller')) {
            $transport = new Zend_Mail_Transport_Smtp('localhost');
            $mail = new Zend_Mail('UTF-8');
            $mail->addTo('vitaliy.shyshko@alcotec.com.ua');
            $mail->setFrom('web@590.ua', 'server');
            $mail->setSubject("Error {$_SERVER['HTTP_HOST']}");
            $mail->setBodyHtml("{$_SERVER['HTTP_REFERER']} <br />{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']} <br />" . $errors->exception->getMessage()."<br /><pre>".$errors->exception->getTraceAsString()."</pre>");
            try {
                $mail->send($transport);
            } catch (Exception $e) {
                echo $e->getMessage();
            }
        } else {
            $db = Zend_Db_Table_Abstract::getDefaultAdapter();
            $url = urldecode($this->_request->getRequestUri());

            $urlParts = explode('/',$url);
            switch(count($urlParts)) {
                case 2:
                    $row = $db->fetchRow($db->select()->from('catalog_categories')->where('name = ?', str_replace('-',' ', $urlParts[1])));
                    break;
                case 3:
                    $row = $db->fetchRow($db->select()
                        ->from(['cc'=>'catalog_categories'])
                        ->join(['cc2'=>'catalog_categories'],'cc.parent = cc2.id',[])
                        ->where('cc.name = ?', str_replace('-',' ', $urlParts[2]))
                        ->where('cc2.name = ?', str_replace('-',' ', $urlParts[1])));
                    if ($row) {
                        $subdomain = $row['subdomain'] ? "{$row['subdomain']}." : '';
                        $latinName = str_replace(' ','-',$row['latin_name']);
                        $this->_redirect("http://{$subdomain}590.ua/{$latinName}", array('code' => 301));
                    }
                    break;
                case 4:
                    if (in_array($urlParts[3],['brand','filter'])) {
                        $row = $db->fetchRow($db->select()
                            ->from(['cc'=>'catalog_categories'])
                            ->join(['cc2'=>'catalog_categories'],'cc.parent = cc2.id',[])
                            ->where('cc.name = ?', str_replace('-',' ', $urlParts[2]))
                            ->where('cc2.name = ?', str_replace('-',' ', $urlParts[1])));
                        if ($row) {
                            unset($urlParts[0]);
                            unset($urlParts[1]);
                            unset($urlParts[2]);
                            $subdomain = $row['subdomain'] ? "{$row['subdomain']}." : '';
                            $latinName = str_replace(' ','-',$row['latin_name']);
                            $this->_redirect("http://{$subdomain}590.ua/{$latinName}/".strtolower(join('/',$urlParts)), array('code' => 301));
                        }
                        break;
                    }
                    $row = $db->fetchRow($db->select()
                        ->from(['cc'=>'catalog_categories'])
                        ->join(['cc2'=>'catalog_categories'],'cc.parent = cc2.id',[])
                        ->where('REPLACE(cc.onename,"-"," ")= ?', str_replace('-',' ', $urlParts[2]))
                        ->where('cc2.name = ?', str_replace('-',' ', $urlParts[1])));
                    if ($row) {
                        $subdomain = $row['subdomain'] ? "{$row['subdomain']}." : '';
                        $itemName = strtolower($urlParts[3]);
                        $latinName = str_replace(' ','-',$row['latin_name_single']);
                        $this->_redirect("http://{$subdomain}590.ua/{$latinName}/{$itemName}", array('code' => 301));
                    }
                    break;
                default:
                    $row = $db->fetchRow($db->select()
                        ->from(['cc'=>'catalog_categories'])
                        ->join(['cc2'=>'catalog_categories'],'cc.parent = cc2.id',[])
                        ->where('REPLACE(cc.name,"-"," ")= ?', str_replace('-',' ', $urlParts[2]))
                        ->where('REPLACE(cc2.name,"-"," ") = ?', str_replace('-',' ', $urlParts[1])));
                    if ($row) {
                        unset($urlParts[0]);
                        unset($urlParts[1]);
                        unset($urlParts[2]);
                        $subdomain = $row['subdomain'] ? "{$row['subdomain']}." : '';
                        $latinName = strtolower(str_replace(' ','-',$row['latin_name']));
                        $this->_redirect("http://{$subdomain}590.ua/{$latinName}/".strtolower(join('/',$urlParts)), array('code' => 301));
                    }

                    $row = $db->fetchRow($db->select()
                        ->from(['cc'=>'catalog_categories'])
                        ->join(['cc2'=>'catalog_categories'],'cc.parent = cc2.id',[])
                        ->where('REPLACE(cc.onename,"-"," ")= ?', str_replace('-',' ', $urlParts[2]))
                        ->where('REPLACE(cc2.name,"-"," ") = ?', str_replace('-',' ', $urlParts[1])));
                    exit;
                    if ($row) {
                        unset($urlParts[0]);
                        unset($urlParts[1]);
                        unset($urlParts[2]);
                        $subdomain = $row['subdomain'] ? "{$row['subdomain']}." : '';
                        $latinName = strtolower(str_replace(' ','-',$row['latin_name']));
                        $this->_redirect("http://{$subdomain}590.ua/{$latinName}/".strtolower(join('/',$urlParts)), array('code' => 301));
                    }
                    break;
            }
        }
        $this->_response->setHttpResponseCode(404);
        $this->_forward('page404','index');
    }
}
