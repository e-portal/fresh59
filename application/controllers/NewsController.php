<?php

class NewsController extends Alcotec_Frontend_Controller_NewsController {
    public function indexAction()
    {
        $this->view->wrap = 'wrap';
        parent::indexAction();
    }
}