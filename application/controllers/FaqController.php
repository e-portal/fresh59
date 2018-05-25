<?php

class FaqController extends Alcotec_Frontend_Controller_FaqController {

    public function indexAction()
    {
        $this->view->css_int = '
                    <link rel="stylesheet" href="/assets/css/accord.css">
            ';
        $this->view->wrap = true;

        parent::indexAction();
    }
}