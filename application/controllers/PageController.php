<?php

class PageController extends Alcotec_Frontend_Controller_PageController {

    public function indexAction() {
        if ($this->_getParam('pagename')=='adress') {
            $this->_redirect('/page/address',array('code'=>301));
        }

        $this->view->body_class = $this->_getParam('pagename') ? $this->_getParam('pagename') : null;

        parent::indexAction();
    }
}