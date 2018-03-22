<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
*/
class ProductsController extends Zend_Controller_Action {
	
	public function indexAction() {
		$db = Zend_Db_Table_Abstract::getDefaultAdapter ();
		$config = new Zend_Config_Ini('./application/configs/grid.ini', 'production');
		$grid = Bvb_Grid::factory('table',$config,$gridId = '');
		$selectFields = ['c.id', 'c.id2', 'c.name', 'c.price', 'brand' => 'b.name', 'cat' => 'c_c.name'];
		$sites = Zend_Registry::get('sites');
		foreach ($sites as $siteId => $params) {
			array_push ($selectFields, 'c.discount_' . $siteId);
		}
		$grid->query($db->select() -> from(array('c' => 'catalog'), $selectFields)
		-> join(array('b' => 'catalog_brands'), 'c.id_brand = b.id', array()) 
		-> join(array('c_c' => 'catalog_categories'), 'c.id_category = c_c.id', array()));
		$grid->setPagination(50);
		$grid->updateColumn('brand', array('title' => 'Бренд'));
		$grid->updateColumn('name', array('title' => 'Модель', 'decorator' => '<a href="/admin/products/edit/prodid/{{id}}"> {{name}}</a>'));
		$grid->updateColumn('price', array('title' => 'Цена'));
		$grid->updateColumn('cat', array('title' => 'Категория'));
		$filters = new Bvb_Grid_Filters();
		$tree = new CatTree();
		foreach ($tree->getTree() as $f) {
  		   echo str_repeat('-', (int)$f['depth']) . ' ' . $f['name'] . '<br>';
		}
		$filters->addFilter('brand', array('distinct' => array('field' => 'b.name', 'name' => 'b.name')));
		$filters->addFilter('cat', array('distinct' => array('field' => 'c_c.name', 'name' => 'c_c.name')));
		$filters->addFilter('price')->addFilter('name');
		foreach ($sites as $siteId => $params) {
			$grid->updateColumn('discount_' . $siteId, array('title' => "Скидка на {$params['name']}", 'searchType' => '>'));
			$filters->addFilter('discount_' . $siteId);
		}
		$grid->addFilters($filters);
		$this->view->grid = $grid->deploy();
	}
	
	public function editAction() {
		if ($this->getRequest()->isGet() && $this->_getParam('prodid')) {
			$form = new Productform(array('prodid'=> $this->_getParam('prodid')));
			$form->initStartValues();
			$this->view->form = $form;
			
		} else if ($this->getRequest()->isPost()) {
			$form = new Productform(array('prodid'=> $this->_getParam('prodid')));
			if ($form->isValid($this->_getAllParams())) {
				$catdata = $form->getValue('catalog');
				$fieldsdata = $form->getValue('fields');
				array_pop($catdata);
				$modcat = new Catalog();
				$good = $modcat->find($catdata['id'])->current();
                $good->setFromArray($catdata)->save();
				$db = Zend_Db_Table_Abstract::getDefaultAdapter();
				foreach ($fieldsdata as $key => $value) {
					$values[]= "({$catdata['id']}, {$key}, {$db->quote($value)})";
				}
				$db->query("INSERT INTO catalog_fields_values (id_item, id_field, value) VALUES  " . join(",\n", $values) . " ON DUPLICATE KEY UPDATE value = VALUES (`value`)");
			}
		}
	}
	
	public function addAction() {
		if ($this->getRequest()->isGet() && $this->_getParam('catid')) {
			$this->view->form = new Productform(array('catid'=> $this->_getParam('catid')));
		} else {
			Zend_Debug::dump($_GET);
		}
	}
	
	public function getimghtmlAction() {
		$goods = new Catalog();
		if ($result = $goods->find($this->_getParam('id'))) {
			$good = $result->current();
			$this->view->images =  $good->findDependentRowset('Images', null, $good->getTable()->select()->order('sort'))->toArray();
		}
	}
	
	public function ajaxsortimgAction() {
		$this->_helper->removeHelper('viewRenderer');
		if ($this->_getParam('id') && $this->_hasParam('sort') && $this->_getParam('direction')) {
			$imgmod = new Images();
			echo Zend_Json::encode($imgmod->sortimg($this->_getParam('id'), $this->_getParam('direction'), $this->_getParam ('sort')));
		}
	}
	
	public function ajaxdelimgAction() {
		$images = new Images();
		if (($result = $images->find(intval($this->_getParam('id')))) && $result->count()) {
			$image = $result->getRow(0);
			$image->delete();
		}
	}
	
	public function uploadimgAction() {
		if ($this->_getParam('imglink')) {
			$this->view->img = $imglink;
		} else {
			$adapter = new Zend_File_Transfer_Adapter_Http();
			$config = Zend_Registry::get('config');
			$adapter->setDestination($config->images->storecat)->addValidator('Count', true, 1)->addValidator('Size', true, '5MB')->addValidator('Extension', true, array('png', 'jpg', 'jpeg', 'gif'));
			if (!$adapter->receive()) {
				$messages = $adapter->getMessages();
			} else {
				$images = new Images();
				$catalog = new Catalog();
				$config = Zend_Registry::get('config');
				$filename = $adapter->getFileName();
				$thumb = new Alcotec_Thumbnail($filename);
				$thumb->resize($config->images->big_maxheight, $config->images->big_maxwidth);
				$thumb->save($filename);
				$ext = end(explode('.', $filename));
				if (!$this->_getParam('prodid')) {
					$id = $catalog->insert(array('name' => 'new'));
					$db = Zend_Db_Table_Abstract::getDefaultAdapter();
					$sort = $db->fetchOne("SELECT max(sort)+1 FROM catalog_img WHERE id_catalog = {$id}");
					$imgid = $images->insert(array('id_catalog' => $id, 'imgext' => $ext, 'sort'=>$sort ? $sort : 0, 'main'=> $sort ? 0 : 1));
					$newname = $config->images->storecat . '/' . $imgid . '.' . $ext;
					$newname_s = $config->images->storecat . '/' . $imgid . '_s.' . $ext;
					rename($filename, $newname);
					$thumb_s = new Alcotec_Thumbnail($newname);
					$thumb_s->resize($config->images->s_maxheight, $config->images->s_maxwidth);
					$thumb_s->save($newname_s);
				} else {
					$prodid = (int)$this->_getParam('prodid');
					$imgid = $images->insert(array('id_catalog' => $prodid, 'imgext' => $ext));
					$newname = $config->images->storecat . '/' . $imgid . '.' . $ext;
					$newname_s = $config->images->storecat . '/' . $imgid . '_s.' . $ext;
					rename($filename, $newname);
					$thumb_s = new Alcotec_Thumbnail($newname);
					$thumb_s->resize($config->images->s_maxheight, $config->images->s_maxwidth);
					$thumb_s->save($newname_s);
				}
			}
		}
	}
	public function createnewprodidAction() {
		$catalog = new Catalog();
		$this->view->id = $catalog->insert(array('name' => 'new'));
	}
	
	public function callbackAction()  {
		$callbackmod = new Callback();
		switch ($this->_getParam('status')) {
			case 'new':
				$this->view->data = $callbackmod->getList('new');
			break;
			case 'done':
				$this->view->data = $callbackmod->getList('done');
			break;
		}
	}
	
	public function calldoneAction() {
		$this->_helper->removeHelper('viewRenderer');
		if ($this->_getParam('id')) {
			$callbackmod = new Callback();
			$call = $callbackmod->find(intval($this->_getParam('id')))->current();
			$call->status = 'done';
			$call->save();
			$this->_redirect($_SERVER ['HTTP_REFERER']);
		}
	}
	
	public function fiximgAction() {
			$this->_helper->removeHelper('viewRenderer');
			$db = Zend_Db_Table_Abstract::getDefaultAdapter();
			$ids = join(',', $db->fetchCol('SELECT MIN(id) FROM catalog_img GROUP BY id_catalog where id_catalog > 9800'));
			Zend_Debug::dump($ids);
	}
}
