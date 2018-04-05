<?php

class ArticlesController extends Alcotec_Frontend_Controller_ArticlesController {

    public function indexAction() {
        $modArticles = new Articles();
        $siteId = Zend_Registry::get('siteId');
        $lang = Zend_Registry::isRegistered('lang') ? Zend_Registry::get('lang') : 'ru';
        $rawId = $this->_getParam('id');

        $this->view->body_class = 'articles';

        if ($this->_hasParam('id') && $this->_getParam('id') != 'page') {
            if ($this->_getParam('id') && (string)(int)$rawId == $rawId) {
                $id = intval($this->_getParam('id'));
                if ($siteId == 4) {
                    $news = $modArticles->fetchRow("site_id = {$siteId} and id={$id}");
                    $this->_redirect('/articles/'.$news->url, array('code' => 301));
                }
            } else {
                if (preg_match('/[^А-Я0-9A-Za-z-]+/ui',$this->_getParam('id')) > 0) {
                    $name = $modArticles->getAdapter()->quote($this->_getParam('id'));
                    $article = $modArticles->fetchRow("REPLACE(announce,' ','-') = {$name}");
                    $id = $article->id;
                    if (!$id) {
                        $this->_response->setHttpResponseCode(404);
                        $this->_redirect('/404');
                    } else {
                        $newUrl = $modArticles->getUrl($article->announce);
                        $this->_redirect('/articles/'.$newUrl, array('code' => 301));
                    }
                } else {
                    $name = $modArticles->getAdapter()->quote($this->_getParam('id'));
                    $article = $modArticles->fetchRow("url = {$name}");
                    if ($this->_getParam('id') != mb_strtolower($article->url,'utf-8')) {
                        $this->_redirect('/articles/'.mb_strtolower($article->url,'utf-8'), array('code'=>301));
                    }
                    $id = $article->id;
                    if (!$id) {
                        $this->_response->setHttpResponseCode(404);
                        $this->_redirect('/404');
                    }
                }

            } if ($lang == 'ru') {
                if ($article = $modArticles->fetchRow("site_id = {$siteId} and id={$id} and visible='1'")) {
                    $this->view->article = $article;
                    $this->view->id = $article->id;
                    $this->view->title = $article->title;
                    $this->view->description = $article->description;
                    $this->view->keywords = $article->keywords;
                } else {
                    $this->_response->setHttpResponseCode(404);
                    $this->_redirect('/404');
                }
            }
        } else {
            if ($lang == 'ru') {
                if ($siteId == 4) {
                    $select = $modArticles->select()->where('visible = "1"')->where('site_id = ?', $siteId)->order('date DESC');
                    $urlpath = new Alcotec_Urlpath(array('baseUrl' => '/articles', 'urlParams' => array_diff_key($this->getRequest()->getParams(), array('module' => '', 'searchtext' => '', 'action' => '', 'controller' => '', 'id' => '',))));
                    $paginator = Alcotec_Paginator::factory($select, $urlpath);
                    $paginator->setItemsPerPage(12);
                    preg_match('/page\/(\d+)/', $_SERVER['REQUEST_URI'], $page);
                    $this->view->paginator = $paginator->setCurrentPageNumber($page[1]);
                    $this->view->articles = $paginator->getCurrentItems();
                } else {
                    $this->view->news = $modArticles->fetchAll("site_id = {$siteId} and visible=1", 'date DESC');
                }

            } else {
                $this->view->news = $modArticles->getTranslated();
            }
        }
    }
}