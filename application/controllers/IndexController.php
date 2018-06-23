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
class IndexController extends Alcotec_Frontend_Controller_IndexController
{

    public function priceAction()
    {
        $this->_helper->removeHelper('viewRenderer');
        $modPrice = new Price();
        header('Content-type: text/csv');
        header('Cache-Control: no-store, no-cache');
        Header('Content-Disposition: attachment; filename="nicolas.csv"');
        $modPrice->getCommonPrice();
    }

    public function indexAction()
    {
        $siteId = Zend_Registry::get('siteId');
        $modNews = new News();
        $date = date('Y-m-d');

        $this->view->body_class = 'home-page';
        $this->view->footer_news = $modNews->fetchAll("site_id = {$siteId} AND big_img is not null and visible=1 AND is_action = 1 AND end_date >= '{$date}' AND end_date is not NULL", 'date DESC', 20, 0);
        $modArticles = new Articles();

        $this->view->footer_articles = $modArticles->fetchAll("site_id = {$siteId} and visible = '1'", 'date DESC', 8, 0)->toArray();

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

        $db = Zend_Db_Table_Abstract::getDefaultAdapter();

        try {
            $actionItems = $cache->load($actionItemsKey);


            $actionItemsInfo = $db->fetchAssoc("SELECT act.id_item  as id_item_action, act.end_date as end_date_action FROM actions as act, catalog as cat WHERE cat.id_availability = 1 and act.archive=0 and act.end_date IS NOT NULL and act.id_item = cat.id and act.type = 'gift'");

            foreach ($actionItems as $key => $value) {
                foreach ($actionItemsInfo as $dopkey => $dopvalue) {
                    if ($value["id"] == $dopvalue["id_item_action"]) {
                        $new_format_date = date("d/m/Y", strtotime($dopvalue["end_date_action"]));
                        $actionItems[$key]["end_date"] = $new_format_date;
                    }
                }
            }

        } catch (Exception $e) {

        }

        if (!$actionItems) {
            $select = $modCatalog->getItemList('c.id_availability = 1')
                ->HAVING('(act.type IS NOT NULL AND icon IS NOT NULL)');

            $actionItems = $select->limit(20)->query()->fetchAll();

            $actionItemsInfo = $db->fetchAssoc("SELECT act.id_item  as id_item_action, act.end_date as end_date_action FROM actions as act, catalog as cat WHERE cat.id_availability = 1 and act.archive=0 and act.end_date IS NOT NULL and act.id_item = cat.id and act.type = 'gift'");

            foreach ($actionItems as $key => $value) {
                foreach ($actionItemsInfo as $dopkey => $dopvalue) {
                    if ($value["id"] == $dopvalue["id_item_action"]) {
                        $new_format_date = date("d/m/Y", strtotime($dopvalue["end_date_action"]));
                        $actionItems[$key]["end_date"] = $new_format_date;
                    }
                }
            }
            try {
                $cache->save($actionItems,$actionItemsKey);
            }
            catch (Exception $e) {
            }
        }

        $this->view->actionItems = $actionItems;

        /**
         * Вывод двух маленьких слайдеров на главной ввверху
         * и четырех статических маленьких баннеров под слайдерами
         */

        $allBannerSliderItems = $db->fetchAssoc("SELECT * FROM `littlebannersindex590`");

        foreach ($allBannerSliderItems as $key => $value) {

            if ( $value['type'] == 'static' ) {
                $staticBannerItems[] = $value;
            }
            elseif ( $value['type'] == 'top' ) {
                $topSliderItems[] = $value;
            }
            elseif ( $value['type'] == 'bottom' ) {
                $bottomSliderItems[] = $value;
            }
        }

        $this->view->staticBanner = $staticBannerItems;
        $this->view->topSlider = $topSliderItems;
        $this->view->bottomSlider = $bottomSliderItems;
    }

    function plural_type($n)
    {
        return ($n % 10 == 1 && $n % 100 != 11 ? 0 : ($n % 10 >= 2 && $n % 10 <= 4 && ($n % 100 < 10 || $n % 100 >= 20) ? 1 : 2));
    }

    public function transfermanagersAction()
    {
        $this->_helper->removeHelper('viewRenderer');
        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        foreach ($db->fetchPairs("SELECT login, password  FROM `a_users` WHERE login = ANY(SELECT login FROM `a_user_roles` WHERE `role` LIKE 'sales')") as $login => $pass) {
            foreach ($db->fetchAll('SELECT * FROM sites') as $site) {
                echo "DELETE FROM users WHERE login = '{$login}' and site={$site['id']};\n";
                echo "INSERT INTO users(site, active, login, password, manager) VALUES ({$site['id']}, 1, '{$login}', '{$pass}',1);\n";
            }
        }
    }

    public function convertdbAction()
    {
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

    public function page404Action()
    {
        $zf = $this->view->zf;
        $zf['params']['action'] = 'page404';
        $zf['params']['controller'] = 'index';
        $this->view->zf = $zf;
        $this->getResponse()->setHttpResponseCode(404);
    }




/**
 * [Вывод продуктов отсортированных по топу продаж или по дате добавления товара
 * для вывода в слайдерах на главной странице]
 *
 * @return  [json]  [вывод items с 20 продуктами, result - success / failed,
 * type - топ родаж/новинки, maincategory - главная категория, subcategory - список подкатегорий в главной категории]
 */

    public function getnewtopproductsAction() {
        $parentCatId = $this->_hasParam('catid') ? intval($this->_getParam('catid')) : null;
        $type = $this->_hasParam('type') ? intval($this->_getParam('type')) : null;

        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $modCat = new Catalog();

        //Смотрим в базе свежий курс евро
        $curs_evro_sql = $db->fetchAssoc("SELECT * FROM `catalog_currencies` WHERE short_name ='eur'");
        $curs_evro = $curs_evro_sql[6]['rate'];

        $catIdArr = $db->fetchAll("SELECT id FROM `catalog_categories` WHERE parent = '{$parentCatId}' AND visible_4 = 1 and subdomain != ''");
        foreach ($catIdArr as $key => $value) {
            $catId[] = $value['id'];
        }
        $catId = implode(",", $catId);

            //ДЛЯ ТОПА ПРОДАЖ
        if ($type == 1 && $catId) {
            //"SELECT * FROM `catalog` WHERE `id_category` in ({$catId}) and id_availability=1 ORDER BY sales_4 DESC LIMIT 70"
            $filters['availability'] = 1;
            $modCat->setFilters($filters);
            $modCat->setTopNewSearchCatsId($catId,'sales_4');
            $items = $modCat->getItemList()->limit(70)->query()->fetchAll();

            foreach ($items as $key => $value) {
                if ($value['actid']) {
                    $giftImageSql = $db->select()
                            ->from(array('a'=>'actions'))
                            ->join(array('ci'=>'catalog_img'),'a.gift = ci.id_catalog',array('id','imgext'))
                            ->order('ci.sort ASC')
                            ->limit(1)
                            ->where('a.id = ?',$value['actid']);

                        $giftImage = $db->fetchRow($giftImageSql);

                        if ($giftImage) {
                           $items[$key]["gift_image"] = $giftImage['id'].'_s.'.$giftImage['imgext'];
                        }
                }

                    //корректировка имени категории для правильного url
                $correct_latin_name = str_replace(' ', '-', $value['cat_latin_single']);
                $items[$key]["cat_latin_single"] = $correct_latin_name;

                    //скооректированная цена (записываем старую и акционную цены, если они есть)
                if ($value['specprice'] && ($value['bdprice'] > $value['price']) && (($value['bdprice'] - $value['price'])/$value['price'] > 0.01) ) {
                    $correct_old_price = $value['bdprice'];
                    $correct_price = $value['price'];
                } else{
                    $correct_old_price = null;
                    $correct_price = $value['price'];
                }

                $correct_old_price = round($correct_old_price * $curs_evro);
                $correct_price = round($correct_price * $curs_evro);

                $items[$key]["correct_old_price"] = $correct_old_price;
                $items[$key]["correct_price"] = $correct_price;

                    //сумма первого платежа за мгновенную рассрочку из рассчета за 24 месяца
                $mgnovennaya_rassrochka = ($correct_price + ($correct_price * 0.99 * 24 / 100)) / 24;
                $items[$key]["mgnovennaya_rassrochka"] = round($mgnovennaya_rassrochka);

                    //сумма первого платежа по оплате частями
                if ($value['rent'] > 25) {
                    $oplata_chast_month = 8;
                }elseif ($value['rent'] > 12.5) {
                    $oplata_chast_month = 6;
                }else{
                    $oplata_chast_month = 3;
                }

                $oplata_chast = $correct_price / $oplata_chast_month;
                $items[$key]["oplata_chast"] = round($oplata_chast);
                $items[$key]["oplata_chast_month"] = $oplata_chast_month;
            }

            $res['result'] = 'success';
            $res['type'] = 'топ продаж';
            $res['maincategory'] = $parentCatId;
            $res['subcategory'] = $catId;
            $res['items'] = $items;
        }
            //ДЛЯ НОВИНОК
        elseif ($type == 2 && $catId) {
            //"SELECT * FROM `catalog` WHERE `id_category` in ({$catId}) and id_availability=1 ORDER BY `date` DESC LIMIT 70"
            $filters['availability'] = 1;
            $modCat->setFilters($filters);
            $modCat->setTopNewSearchCatsId($catId,'date');
            $items = $modCat->getItemList()->limit(70)->query()->fetchAll();

            foreach ($items as $key => $value) {
                if ($value['actid']) {
                    $giftImageSql = $db->select()
                            ->from(array('a'=>'actions'))
                            ->join(array('ci'=>'catalog_img'),'a.gift = ci.id_catalog',array('id','imgext'))
                            ->order('ci.sort ASC')
                            ->limit(1)
                            ->where('a.id = ?',$value['actid']);

                        $giftImage = $db->fetchRow($giftImageSql);

                        if ($giftImage) {
                           $items[$key]["gift_image"] = $giftImage['id'].'_s.'.$giftImage['imgext'];
                        }
                }

                    //корректировка имени категории для правильного url
                $correct_latin_name = str_replace(' ', '-', $value['cat_latin_single']);
                $items[$key]["cat_latin_single"] = $correct_latin_name;

                    //скооректированная цена (записываем старую и акционную цены, если они есть)
                if ($value['specprice'] && ($value['bdprice'] > $value['price']) && (($value['bdprice'] - $value['price'])/$value['price'] > 0.01) ) {
                    $correct_old_price = $value['bdprice'];
                    $correct_price = $value['price'];
                } else{
                    $correct_old_price = null;
                    $correct_price = $value['price'];
                }

                $correct_old_price = round($correct_old_price * $curs_evro);
                $correct_price = round($correct_price * $curs_evro);

                $items[$key]["correct_old_price"] = $correct_old_price;
                $items[$key]["correct_price"] = $correct_price;

                    //сумма первого платежа за мгновенную рассрочку из рассчета за 24 месяца
                $mgnovennaya_rassrochka = ($correct_price + ($correct_price * 0.99 * 24 / 100)) / 24;
                $items[$key]["mgnovennaya_rassrochka"] = round($mgnovennaya_rassrochka);

                    //сумма первого платежа по оплате частями
                if ($value['rent'] > 25) {
                    $oplata_chast_month = 8;
                }elseif ($value['rent'] > 12.5) {
                    $oplata_chast_month = 6;
                }else{
                    $oplata_chast_month = 3;
                }

                $oplata_chast = $correct_price / $oplata_chast_month;
                $items[$key]["oplata_chast"] = round($oplata_chast);
                $items[$key]["oplata_chast_month"] = $oplata_chast_month;
            }

            $res['result'] = 'success';
            $res['type'] = 'новинки';
            $res['maincategory'] = $parentCatId;
            $res['subcategory'] = $catId;
            $res['items'] = $items;
        }
            //ДЛЯ АКЦИЙ
        elseif ($type == 3 && $catId) {

            $filters['availability'] = 1;
            $modCat->setFilters($filters);
            $modCat->setTopNewSearchCatsId($catId,'act');
            $items = $modCat->getItemList()->HAVING('(act.type IS NOT NULL AND icon IS NOT NULL)')->limit(22)->query()->fetchAll();

            $actionItemsInfo = $db->fetchAssoc("SELECT act.id_item  as id_item_action, act.end_date as end_date_action FROM actions as act, catalog as cat WHERE cat.id_availability = 1 and act.archive=0 and act.end_date IS NOT NULL and act.id_item = cat.id and act.type = 'gift'");

            foreach ($items as $key => $value) {
                foreach ($actionItemsInfo as $dopkey => $dopvalue) {
                    if ($value["id"] == $dopvalue["id_item_action"]) {
                        $new_format_date = date("d/m/Y", strtotime($dopvalue["end_date_action"]));
                        $items[$key]["end_date"] = $new_format_date;

                        $giftImageSql = $db->select()
                            ->from(array('a'=>'actions'))
                            ->join(array('ci'=>'catalog_img'),'a.gift = ci.id_catalog',array('id','imgext'))
                            ->order('ci.sort ASC')
                            ->limit(1)
                            ->where('a.id = ?',$value['actid']);
                        $giftImage = $db->fetchRow($giftImageSql);
                        if ($giftImage) {
                           $items[$key]["gift_image"] = $giftImage['id'].'_s.'.$giftImage['imgext'];
                        }
                    }
                }

                    //корректировка имени категории для правильного url
                $correct_latin_name = str_replace(' ', '-', $value['cat_latin_single']);
                $items[$key]["cat_latin_single"] = $correct_latin_name;

                    //скооректированная цена (записываем старую и акционную цены, если они есть)
                if ($value['specprice'] && ($value['bdprice'] > $value['price']) && (($value['bdprice'] - $value['price'])/$value['price'] > 0.01) ) {
                    $correct_old_price = $value['bdprice'];
                    $correct_price = $value['price'];
                } else{
                    $correct_old_price = null;
                    $correct_price = $value['price'];
                }

                $correct_old_price = round($correct_old_price * $curs_evro);
                $correct_price = round($correct_price * $curs_evro);

                $items[$key]["correct_old_price"] = $correct_old_price;
                $items[$key]["correct_price"] = $correct_price;

                    //сумма первого платежа за мгновенную рассрочку из рассчета за 24 месяца
                $mgnovennaya_rassrochka = ($correct_price + ($correct_price * 0.99 * 24 / 100)) / 24;
                $items[$key]["mgnovennaya_rassrochka"] = round($mgnovennaya_rassrochka);

                    //сумма первого платежа по оплате частями
                if ($value['rent'] > 25) {
                    $oplata_chast_month = 8;
                }elseif ($value['rent'] > 12.5) {
                    $oplata_chast_month = 6;
                }else{
                    $oplata_chast_month = 3;
                }

                $oplata_chast = $correct_price / $oplata_chast_month;
                $items[$key]["oplata_chast"] = round($oplata_chast);
                $items[$key]["oplata_chast_month"] = $oplata_chast_month;
            }

            $res['result'] = 'success';
            $res['type'] = 'акции';
            $res['maincategory'] = $parentCatId;
            $res['subcategory'] = $catId;
            $res['items'] = $items;
        }
            //ЕСЛИ ЗАПРОС НЕ ВЕРНЫЙ
        else {
            $res['result'] = 'failed';
        }

        echo json_encode($res);
    }
}