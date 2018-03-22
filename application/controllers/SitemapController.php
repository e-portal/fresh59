<?php

require_once(APPLICATION_PATH . '/views/__helpers/Iurl.php');

class SitemapController extends Alcotec_Frontend_Controller_SitemapController {

// class SitemapController {

    protected $_siteParams;
    protected $_iUrl;

    protected function getHost() {
        if (empty($this->_siteParams)) {
            $config = Zend_Registry::get('config');
            $this->_siteParams = $config->get('site');            
        }
        return $this->_siteParams->protocol . $this->_siteParams->domain;
    }

    protected function getItemUrl($item) {
        if (empty($this->_iUrl)) {
            $this->_iUrl = new Zend_View_Helper_Iurl();
        }
        
        return $this->getHost() . $this->_iUrl->iurl(array(
            'parent'=>$item['subdomain'],
            'cat'=>$item['cat_latin_single'],
            'brand'=>$item['brand'],
            'item'=>$item['name'],
        ));
    }

    public function generateAction() {
        $this->_helper->removeHelper('viewRenderer');

        $this->xmlCategoriesAction();
        $this->xmlPagesAction();
        $this->xmlNewsAction();
        $this->xmlArticlesAction();
        $this->xmlProductsAction();
        $this->xmlBrandsAction();

        echo 'Sitemaps XML Generated';
    }

    public function xmlCategoriesAction() {
    	$xml = new SimpleXMLElement("<?xml version='1.0' encoding='UTF-8'?><urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\"></urlset>");
        $url = $xml->addChild('url');
        $url->addChild('loc', $this->getHost());
        $url->addChild('changefreq','always');
        $url->addChild('priority','1');

        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $fields = array('cc.id','cc.name','cc.parent', 'subdomain', 'cc.latin_name');
        $select = $db->select()->from(array('cc' => 'catalog_categories'), $fields);
        $select->joinLeft(array('cc2' => 'catalog_categories'), 'cc.parent = cc2.id', array('parentname'=>'subdomain'));
        $select->where('cc.visible_4 = "1"')->where('cc.id = ANY(SELECT distinct(c.id_category) FROM catalog c INNER JOIN catalog_items_sites_visibility cisv on c.id = cisv.item_id AND cisv.site_id = "4" INNER JOIN catalog_brands cb on c.id_brand = cb.id WHERE cb.visible_4 = "1") > 0');
        $select->where('cc2.visible_4 = "1" OR cc2.visible_4 is null');
        $select->order(array('cc2.left_key','cc.name'));

        $categories = $select->query()->fetchAll();

        foreach ($categories as $cat) {
            $cat['latin_name'] = str_replace(' ','-',$cat['latin_name']);
            $cat['parentname'] = str_replace(' ','-',$cat['parentname']);
            $url = $xml->addChild('url');
            if ($cat['parent']==1 && !in_array($cat['id'],$parents)) {
                $url->addChild('loc', $this->getHost() . '/' . $cat['latin_name']);
                $url->addChild('changefreq','daily');
                $url->addChild('priority','0.9');
                $parents[] = $cat['id'];
            } elseif($cat['parent'] > 0) {
                $url->addChild('loc', $this->getHost() . '/' . $cat['parentname'] . '/' . $cat['latin_name']);
                $url->addChild('changefreq','daily');
                $url->addChild('priority','0.8');
            } else {
                $url->addChild('loc', $this->getHost() . '/' . $cat['latin_name']);
                $url->addChild('changefreq','daily');
                $url->addChild('priority','0.8');
            }
        }

        $path = explode('/', APPLICATION_PATH);
        array_pop($path);
        $path = implode('/', $path);
        $xml->asXML($path . '/public/import/sitemap-categories.xml');
    }

    public function xmlPagesAction() {
    	$xml = new SimpleXMLElement("<?xml version='1.0' encoding='UTF-8'?><urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\"></urlset>");

        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $fields = array('cc.id','cc.name','cc.parent', 'subdomain', 'cc.latin_name');
        $select = $db->select()->from(array('cc' => 'catalog_categories'), $fields);
        $select->joinLeft(array('cc2' => 'catalog_categories'), 'cc.parent = cc2.id', array('parentname'=>'subdomain'));
        $select->where('cc.visible_4 = "1"')->where('cc.id = ANY(SELECT distinct(c.id_category) FROM catalog c INNER JOIN catalog_items_sites_visibility cisv on c.id = cisv.item_id AND cisv.site_id = "4" INNER JOIN catalog_brands cb on c.id_brand = cb.id WHERE cb.visible_4 = "1") > 0');
        $select->where('cc2.visible_4 = "1" OR cc2.visible_4 is null');
        $select->order(array('cc2.left_key','cc.name'));

        $rawMenu = $db->fetchAll('SELECT alias, type FROM static_pages WHERE site_id = "4" AND type != "link"');

        foreach ($rawMenu as $static) {
            $url = $xml->addChild('url');
            $url->addChild('loc', $this->getHost() . '/page/' . $static['alias']);
            $url->addChild('changefreq','monthly');
            $url->addChild('priority','0.4');
        }

        $path = explode('/', APPLICATION_PATH);
        array_pop($path);
        $path = implode('/', $path);
        $xml->asXML($path . '/public/import/sitemap-pages.xml');
    }

    public function xmlNewsAction() {
	    $modNews = new News();
	    $rawNews = $modNews->fetchAll('site_id = "4" AND visible = "1"');

    	$xml = new SimpleXMLElement("<?xml version='1.0' encoding='UTF-8'?><urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\"></urlset>");
	    $url = $xml->addChild('url');
	    $url->addChild('loc', $this->getHost() . '/news');
	    $url->addChild('changefreq','daily');
	    $url->addChild('priority','0.5');

	    foreach ($rawNews as $static) {
	        $url = $xml->addChild('url');
	        $url->addChild('loc', $this->getHost() . '/news/' . mb_strtolower($static['url']));
	        $url->addChild('changefreq','monthly');
	        $url->addChild('priority','0.4');
	    }

        $path = explode('/', APPLICATION_PATH);
        array_pop($path);
        $path = implode('/', $path);
        $xml->asXML($path . '/public/import/sitemap-news.xml');
    }

    public function xmlArticlesAction() {
        $modArticles = new Articles();
        $rawArticles = $modArticles->fetchAll('site_id = "4" AND visible = "1"');

		$xml = new SimpleXMLElement("<?xml version='1.0' encoding='UTF-8'?><urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\"></urlset>");
        $url = $xml->addChild('url');
        $url->addChild('loc', $this->getHost() . '/articles');
        $url->addChild('changefreq','monthly');
        $url->addChild('priority','0.4');

        foreach ($rawArticles as $static) {
            $url = $xml->addChild('url');
            $url->addChild('loc', $this->getHost() . '/articles/' . mb_strtolower($static['url']));
            $url->addChild('changefreq','monthly');
            $url->addChild('priority','0.4');
        }

        $path = explode('/', APPLICATION_PATH);
        array_pop($path);
        $path = implode('/', $path);
        $xml->asXML($path . '/public/import/sitemap-articles.xml');
    }

    public function xmlProductsAction() {
        $modCatalog = new Catalog();
        $itemUrl = new Zend_View_Helper_Iurl();
        $select = $modCatalog->getItemList();

		$xml = new SimpleXMLElement("<?xml version='1.0' encoding='UTF-8'?><urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\"></urlset>");

        foreach ($select->query()->fetchAll() as $item) {
            $url = $xml->addChild('url');
            $url->addChild('loc', $this->getItemUrl($item));
            $url->addChild('changefreq','weekly');
            $url->addChild('priority','0.7');
        }

        $path = explode('/', APPLICATION_PATH);
        array_pop($path);
        $path = implode('/', $path);
        $xml->asXML($path . '/public/import/sitemap-products.xml');
    }

    public function xmlBrandsAction() {
        $modCatalog = new Catalog();
        $brands = $modCatalog->getAllBrands();

        $xml = new SimpleXMLElement("<?xml version='1.0' encoding='UTF-8'?><urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\"></urlset>");

        foreach ($brands as $brand) {
            $url = $xml->addChild('url');
            $url->addChild('loc', $this->getHost() . '/' . mb_strtolower(str_replace(' ', '-', $brand['name'])));
            $url->addChild('changefreq','daily');
            $url->addChild('priority','0.9');
        }

        $path = explode('/', APPLICATION_PATH);
        array_pop($path);
        $path = implode('/', $path);
        $xml->asXML($path . '/public/import/sitemap-brands.xml');
    }
}