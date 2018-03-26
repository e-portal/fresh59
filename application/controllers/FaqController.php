<?php

class FaqController extends Alcotec_Frontend_Controller_FaqController {

    public function indexAction()
    {

        $this->view->js_int = '
                <script src="/assets/js/slick.min.js"></script>
                <script src="/assets/js/jquery.fancybox.pack.js"></script>
                <script src="/assets/js/readmore.min.js"></script>
            ';
        $this->view->css_int = '
                    <link rel="stylesheet" href="/assets/css/slick.css">
                    <link rel="stylesheet" href="/assets/css/jquery.fancybox-1.3.4.css">
            ';

        parent::indexAction();
    }
}