<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of IndexController
 *
 * @author Vadyus
 */
class IndexController extends Alcotec_Frontend_Controller_IndexController {

    public function priceAction() {
        $this->_helper->removeHelper('viewRenderer');
        $modPrice = new Price();
        header('Content-type: text/csv');
        header('Cache-Control: no-store, no-cache');
        Header('Content-Disposition: attachment; filename="nicolas.csv"');
        $modPrice->getCommonPrice();
    }

	public function indexAction() {
		$siteId = Zend_Registry::get('siteId');
        $modNews = new News();
        $date = date('Y-m-d');

        $this->view->body_class = 'home-page';
        $this->view->footer_news = $modNews->fetchAll("site_id = {$siteId} AND big_img is not null and visible=1 AND is_action = 1 AND end_date >= '{$date}' AND end_date is not NULL", 'date DESC', 20, 0);
        $modArticles = new Articles();

        $this->view->footer_articles = $modArticles->fetchAll("site_id = {$siteId} and visible = '1'", 'RAND()', 2, 0)->toArray();

        $modCatalog = new Catalog();
		$this->view->footer_items = $modCatalog->getItemList("c.show_index_{$siteId} = 1")->reset(Zend_Db_Select::ORDER)->limit(5)->order('RAND()')->query()->fetchAll();

		$d = new DateTime();
		$dn = $d->diff(new DateTime('2012-03-09'))->format("%d");
		$this->view->dn = $dn;
		$_plural_days = array('день', 'дня', 'дней');
		$this->view->dw = $_plural_days[$this->plural_type($dn)];
        $cache = Zend_Registry::get('cache');

        $modCatalog->setArchive(1);
        $actionItemsKey = 'actionItems1';
        try{
            $actionItems = $cache->load($actionItemsKey);
        }
        catch (Exception $e) {
        }

        if (!$actionItems) {
            $select = $modCatalog->getItemList('c.id_availability = 1')
                ->HAVING('(act.type IS NOT NULL AND icon IS NOT NULL)');

            $actionItems = $select->limit(20)->query()->fetchAll();
            try {
                $cache->save($actionItems,$actionItemsKey);
            }
            catch (Exception $e) {
            }
        }
        $this->view->actionItems = $actionItems;
	}

	function plural_type($n) {
	   return ($n%10==1 && $n%100!=11 ? 0 : ($n%10>=2 && $n%10<=4 && ($n%100<10 || $n%100>=20) ? 1 : 2));
	}

	public function transfermanagersAction() {
		$this->_helper->removeHelper('viewRenderer');
		$db = Zend_Db_Table_Abstract::getDefaultAdapter();
		foreach ($db->fetchPairs("SELECT login, password  FROM `a_users` WHERE login = ANY(SELECT login FROM `a_user_roles` WHERE `role` LIKE 'sales')") as $login => $pass) {
			foreach ($db->fetchAll('SELECT * FROM sites') as $site) {
				echo "DELETE FROM users WHERE login = '{$login}' and site={$site['id']};\n";
				echo "INSERT INTO users(site, active, login, password, manager) VALUES ({$site['id']}, 1, '{$login}', '{$pass}',1);\n";
			}
		}
	}
	
	public function convertdbAction() {
		$this->_helper->removeHelper('viewRenderer');
		$db = Zend_Db_Table_Abstract::getDefaultAdapter();
		
		$sites = $db->fetchCol('SELECT id FROM sites');
		foreach ($sites as $siteId) {
		    $db->query("INSERT INTO catalog_items_visibility SELECT id, {$siteId} FROM catalog where visible_{$siteId}=1");
		}
	}
	/*public function salesAction() {
            $this->_helper->removeHelper ( 'viewRenderer' );
	        $db = Zend_Db_Table_Abstract::getDefaultAdapter ();
	        foreach ($db->fetchCol("SELECT id FROM sites") as $id)
	        {
	            $sales[$id] = $db->fetchPairs("SELECT coi.id_catalog, sum(coi.quantity) FROM catalog_orders_items coi INNER JOIN catalog_orders co on co.id = coi.id_order WHERE co.site = {$id} GROUP by coi.id_catalog");
	        }
	       
	        foreach ($sales as $siteId =>$item)
	             foreach ($item as $itemId=>$salesNum)
	                 $db->query("INSERT INTO catalog_items_sales VALUES ({$itemId},{$siteId},{$salesNum})");
        }
        
        public function shortinfoAction() {
            //$this->_helper->removeHelper ( 'viewRenderer' );
            $db = Zend_Db_Table_Abstract::getDefaultAdapter ();
            $modCatalog = new Catalog();
            foreach ($modCatalog->getItemList('c.id_category=18')->query()->fetchAll() as $item)
            {
                $colour = $db->fetchOne("SELECT value FROM fields_select_values WHERE id = (SELECT value FROM fields_values WHERE id_item = {$item['id']} and id_field = 472) and id_field = 472");
                $h = $db->fetchOne("SELECT value FROM fields_values WHERE id_item = {$item['id']} and id_field = 211");
                $w = $db->fetchOne("SELECT value FROM fields_values WHERE id_item = {$item['id']} and id_field = 212");
                $g = $db->fetchOne("SELECT value FROM fields_values WHERE id_item = {$item['id']} and id_field = 213");
                $povType = $db->fetchOne("SELECT value FROM fields_select_values WHERE id = (SELECT value FROM fields_values WHERE id_item = {$item['id']} and id_field = 458) and id_field = 458");
                $duhType = $db->fetchOne("SELECT value FROM fields_select_values WHERE id = (SELECT value FROM fields_values WHERE id_item = {$item['id']} and id_field = 463) and id_field = 463");
                $ob = $db->fetchOne("SELECT value FROM fields_values WHERE id_item = {$item['id']} and id_field = 468");
                $class = $db->fetchOne("SELECT value FROM fields_select_values WHERE id = (SELECT value FROM fields_values WHERE id_item = {$item['id']} and id_field = 473) and id_field = 473");
                if (!empty($colour) && !empty($h) && !empty($w) && !empty($g)  && !empty($povType) && !empty($duhType) && !empty($ob) && !empty($class))
                {
                    $short_info = "Плита {$item['brand']}. Отдельностоящая. Цвет {$colour}. Габариты {$h}x{$w}x{$g} см. Поверхность {$povType}. Духовка {$duhType}. Объем духовки {$ob}л. Класс энергопотребления {$class}";
                    $db->query("UPDATE catalog set short_info='{$short_info}' WHERE id = {$item['id']}");
                }
            }
        }*/

    public function page404Action() {
        $zf = $this->view->zf;
        $zf['params']['action'] = 'page404';
        $zf['params']['controller'] = 'index';
        $this->view->zf = $zf;
        $this->getResponse()->setHttpResponseCode(404);
    }
}