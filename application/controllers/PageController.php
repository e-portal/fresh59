<?php

class PageController extends Alcotec_Frontend_Controller_PageController {

    public function indexAction() {
        if ($this->_getParam('pagename')=='adress') {
            $this->_redirect('/page/address',array('code'=>301));
        }

        if ($this->_getParam('pagename') == 'address') {
            $this->view->js_int = '
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKFztHzVA7_L75JrTwyrzhk2asYAWUL7I&callback=initMap"></script>
            <script src="/assets/js/map.js"></script>
            ';
        }
        $this->view->wrap = true;

        $this->view->body_class = $this->_getParam('pagename') ? $this->_getParam('pagename') : null;

        parent::indexAction();
    }
}