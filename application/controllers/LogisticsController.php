<?php

class LogisticsController extends Zend_Controller_Action {

	public function indexAction() {
		$db = Zend_Db_Table_Abstract::getDefaultAdapter();
		$config = new Zend_Config_Ini('./application/configs/grid.ini', 'production');
		$grid = Bvb_Grid::factory('table',$config,$gridId = '');
		$selectFields = array('catid' => 'c.id','c.id2', 'brand' => 'b.name','catname' => 'c.name', 'cat' => 'c_c.name','certpirce' => 'c_cert.price','qty_order' => 'l.qty_order', 'l.qty_prof', 'l.qty_inv', 'c_cert.cert_link', 'c_cert.cert_date', 'c_cert.cert2_link', 'c_cert.cert2_date', 'c_cert.decl_link');
		$grid->query($db->select()->from(array('c' => 'catalog'), $selectFields)->join(array('b' => 'catalog_brands'), 'c.id_brand = b.id', array())->joinLeft(array('l' => 'logistics'), 'l.id_item = c.id', array())->joinLeft(array('c_cert' => 'catalog_certificates'), 'c_cert.id_item = c.id', array())->join(array('c_c' => 'catalog_categories'), 'c.id_category = c_c.id', array()));
		$grid->setPagination(50);
		//$grid->cache = array('use' => 1, 'instance' => Zend_Registry::get('cache'), 'tag' => 'grid');
		$grid->updateColumn('brand', array('title' => 'Бренд'));
		$grid->setColumnsHidden(array('catid'));
		$grid->updateColumn('catname', array('title' => 'Модель', 'class' => 'model', 'decorator' => '<a href="/admin/logistics/editcert/prodid/{{catid}}"> {{catname}}</a>'));
		$grid->updateColumn('cat', array('title' => 'Категория'));
		$grid->updateColumn('certpirce', array('title' => 'Цена', 'searchType' => '>=', 'decorator' => '<input type="text" value="{{certpirce}}" onchange="setvalue(\'log\',{{catid}},\'price\', this.value)" /> '));
		$grid->updateColumn('qty_order', array('title' => 'Кол-во заказ', 'searchType' => '>=', 'decorator' => '<input type="text" value="{{qty_order}}" onchange="setvalue(\'log\',{{catid}},\'qty_order\', this.value)" /> '));
		$grid->updateColumn('qty_prof', array('title' => 'Кол-во проформа', 'searchType' => '>=', 'decorator' => '<input type="text" value="{{qty_prof}}" onchange="setvalue(\'log\',{{catid}},\'qty_prof\', this.value)" /> '));
		$grid->updateColumn('qty_inv', array('title' => 'Кол-во инвойс', 'searchType' => '>=', 'decorator' => '<input type="text" value="{{qty_inv}}" onchange="setvalue(\'log\',{{catid}},\'qty_inv\', this.value)" /> '));
		$grid->updateColumn('cert_link', array('title' => 'Сертификат', 'decorator' => "<a href=\"http://alcotec.com.ua/certificates/{{brand}}/{{catname}}/{{cert_link}}\">{{cert_link}}</a>"));
		$grid->updateColumn('cert_date', array('title' => 'Дата сертификата'));
		$grid->updateColumn('cert2_link', array('title' => 'Сертификат2', 'decorator' => "<a href=\"http://alcotec.com.ua/certificates/{{brand}}/{{catname}}/{{cert2_link}}\">{{cert2_link}}</a>"));
		$grid->updateColumn('cert2_date', array('title' => 'Дата сертификата2'));
		$grid->updateColumn('decl_link', array('title' => 'Декларация', 'decorator' => "<a href=\"http://alcotec.com.ua/certificates/{{brand}}/{{catname}}/{{decl_link}}\">{{decl_link}}</a>"));
		$filters = new Bvb_Grid_Filters();
		$filters->addFilter('brand', array('distinct' => array('field' => 'b.name', 'name' => 'b.name')));
		$filters->addFilter('cat', array('distinct' => array('field' => 'c_c.name', 'name' => 'c_c.name')));
		$filters->addFilter('catname')->addFilter('qty_order')->addFilter('qty_inv')->addFilter('qty_prof');
		$grid->addFilters($filters);
		//$grid->setAjax('ajax_grid');
		$grid->setImagesUrl($this->getFrontController()->getBaseUrl() . '/images/');
	
		if (!$this->_hasParam('makecar') and !$this->_hasParam('addtocar')) {
			$this->view->grid = $grid->deploy();
		} else if ($this->_hasParam('makecar')) {
			$grid->setPagination(2000);
			$grid->deploy();
			$columns = $grid->getResult();
			foreach ($columns as $item) {
				$ids[] = $item['catid'];
			}
			$car = new LogisticsCar();
			$caritems = new LogisticsCarItems();
			$logistics = new Logistics();
			$newcarid = $car->insert(array('name' => 'new'));
			foreach ($ids as $id) {
				$item = $logistics->find($id)->current();
				if ($item->id_item && $item->qty_prof or $item->qty_inv) {
					$price = $item->findDependentRowset('Certificates')->current()->price;
					$caritems->insert(array('id_car' => $newcarid, 'id_item' => $item->id_item, 'price' => $price ? $price : 0, 'qty_order' => $item->qty_order, 'qty_prof' => $item->qty_prof, 'qty_inv' => $item->qty_inv));
				} else $this->_redirect('logistics');
			}
			$this->_redirect('logistics/caredit/carid/' . $newcarid);
		} else if ($this->_hasParam('addtocar') && $this->_hasParam('carid')) {
			$grid->deploy();
			$columns = $grid->getResult();
			foreach ($columns as $item) {
				$ids[] = $item['catid'];
			}
			$car = new LogisticsCar();
			$caritems = new LogisticsCarItems();
			$logistics = new Logistics();
			$carid = intval($this->_getParam('carid'));
			foreach ($ids as $id) {
				$item = $logistics->find($id)->current();
				if ($item->id_item && $item->qty_prof) {
					$price = $item->findDependentRowset('Certificates')->current()->price;
					$caritems->insert(array('id_car' => $carid, 'id_item' => $item->id_item, 'price' => $price ? $price : 0, 'qty_order' => $item->qty_order, 'qty_prof' => $item->qty_prof, 'qty_inv' => $item->qty_inv));
				}
			}
			$this->_redirect('logistics/carprodsedit/carid/' . $carid);
		}
	}
	
	public function logisticsajaxAction() {
		$this->_helper->removeHelper('viewRenderer');
		if ($this->_getParam('from') && $this->_getParam('id') && $this->_getParam('type') && $this->_hasParam('value')) {
			$db = Zend_Db_Table_Abstract::getDefaultAdapter();
			$value = intval($this->_getParam('value'));
			$id = intval($this->_getParam('id'));
			switch ($this->_getParam('from')) {
				case 'log' :
					switch ($this->_getParam('type')) {
						case 'qty_order' :
							$db->query("INSERT INTO logistics (id_item, qty_order) VALUES ({$id},{$value}) ON DUPLICATE KEY UPDATE qty_order = VALUES (`qty_order`)");
							break;
						case 'qty_prof' :
							$db->query("INSERT INTO logistics (id_item, qty_prof) VALUES ({$id},{$value}) ON DUPLICATE KEY UPDATE qty_prof = VALUES (`qty_prof`)");
							break;
						case 'qty_inv' :
							$db->query("INSERT INTO logistics (id_item, qty_inv) VALUES ({$id},{$value}) ON DUPLICATE KEY UPDATE qty_inv = VALUES (`qty_inv`)");
							$db->query("UPDATE logistics SET qty_prof=0, qty_order=(IF ((qty_order - qty_inv) < 0, 0, qty_order - qty_inv)) where id_item = {$id}");
							break;
						case 'price' :
							$db->query("INSERT INTO catalog_certificates (id_item, price) VALUES ({$id},{$value}) ON DUPLICATE KEY UPDATE price = VALUES (`price`)");
							break;
					}
					break;
				case 'car' :
					switch ($this->_getParam('type')) {
						case 'qty_order' :
							$db->query("INSERT INTO logistics_cars_items (id_item, qty_order) VALUES ({$id},{$value}) ON DUPLICATE KEY UPDATE qty_order = VALUES (`qty_order`)");
							break;
						case 'qty_prof' :
							$db->query("INSERT INTO logistics_cars_items (id_item, qty_prof) VALUES ({$id},{$value}) ON DUPLICATE KEY UPDATE qty_prof = VALUES (`qty_prof`)");
							break;
						case 'qty_inv' :
							$db->query("UPDATE logistics_cars_items SET `qty_inv`= {$value} where id_item={$id}");
							$db->query("UPDATE logistics_cars_items SET qty_prof=0, qty_order=(IF ((qty_order - qty_inv) < 0, 0, qty_order - qty_inv)) where id_item = {$id}");
							break;
						case 'price' :
							$db->query("INSERT INTO logistics_cars_items (id_item, price) VALUES ({$id},{$value}) ON DUPLICATE KEY UPDATE price = VALUES (`price`)");
							break;
					}
					break;
			}
		}
	}
	
	public function editcertAction() {
		if ($this->getRequest()->isGet() && $this->_getParam('prodid')) {
			$form = new CertifiForm(array('prodid' => $this->_getParam('prodid')));
			$modcert = new Certificates();
			$good = $modcert->find($this->_getParam('prodid'))->current();
			if ($good)
				$form->populate($good->toArray());
			$formNamespace = new Zend_Session_Namespace('Zend_Form');
			$formNamespace->url = $_SERVER['HTTP_REFERER'];
			$modcat = new Catalog();
			$good = $modcat->find($this->_getParam('prodid'))->current();
			$brand = $good->getProps('brand');
			$this->view->model = $brand[0]['name'] . ' ' . $good->name;
		} else {
			$form = new CertifiForm(array('prodid' => $this->_getParam('prodid')));
			$formData = $this->_request->getPost();
			if (!$form->isValid($formData)) {
				$form->populate($formData);
			} else {
				$modcert = new Certificates();
				$formValues = $form->getValues();
				array_pop($formValues);
				foreach ($formValues as $key => $value) {
					$value = str_replace(',', '.', $value);
					if ($value)
						$data[$key] = $value;
				}
				if (!$modcert->find($this->_getParam('prodid'))->current())
					$modcert->insert($data);
				else {
					$modcert->update($data, array('id_item = ?' => $formValues['id_item']));
				}
				$modlogistics = new Logistics();
				if (!$modlogistics->find($this->_getParam('prodid'))->current())
					$modlogistics->insert(array('id_item' => $formValues['id_item']));
				$formNamespace = new Zend_Session_Namespace('Zend_Form');
				$this->_redirect($formNamespace->url);
			}
		}
		$this->view->form = $form;
	}
	
	public function careditAction() {
		if ($this->getRequest()->isGet()) {
			$form = new CarForm($this->_getParam('carid') ? $this->_getParam('carid') : NULL);
			if ($this->_getParam('carid'))
				$form->initStartValues($this->_getParam('carid'));
			$formNamespace = new Zend_Session_Namespace('Zend_Form');
			$formNamespace->url = $_SERVER['HTTP_REFERER'];
		} else {
			$form = new CarForm($this->_getParam('carid') ? $this->_getParam('carid') : NULL);
			$formData = $this->_request->getPost();
			if (!$form->isValid($formData)) {
				$form->populate($formData);
			} else {
				$modcar = new LogisticsCar();
				$formValues = $form->getValues();
				array_pop($formValues);
				foreach ($formValues as $key => $value) {
					if ($value)
						$data[$key] = $value;
				}
				if (!$modcar->find($this->_getParam('carid'))->current())
					$modcar->insert($data);
				else {
					$modcar->update($data, array('id = ?' => $this->_getParam('carid')));
				}
				$this->_redirect('logistics/carprodsedit/carid/' . $this->_getParam('carid'));
			}
		}
		$this->view->form = $form;
	}
	
	public function carprodseditAction() {
		if ($this->_getParam('carid')) {
			$db = Zend_Db_Table_Abstract::getDefaultAdapter();
		    $config = new Zend_Config_Ini('./application/configs/grid.ini', 'production');
			$grid = Bvb_Grid::factory('table',$config,$gridId = '');
			$selectFields = array('car' => 'l.id_car', 'l.id_item', 'c.id', 'c.id2', 'brand' => 'b.name', 'c.name', 'cat' => 'c_c.name', 'l.qty_order', 'l.qty_prof', 'l.qty_inv', 'price' => 'IF(l.price, l.price, c_cert.price)', 'c_cert.cert_link', 'c_cert.cert_date', 'c_cert.cert2_link', 'c_cert.cert2_date', 'c_cert.decl_link');
			$grid->query($db->select()->from(array('l' => 'logistics_cars_items'), $selectFields)->joinLeft(array('c' => 'catalog'), 'l.id_item = c.id', array())->join(array('b' => 'catalog_brands'), 'c.id_brand = b.id', array())->joinLeft(array('c_cert' => 'catalog_certificates'), 'c_cert.id_item = c.id', array())->join(array('c_c' => 'catalog_categories'), 'c.id_category = c_c.id', array()) 
			->where('id_car=?', intval($this->_getParam('carid'))));
			$grid->updateColumn('brand', array('title' => 'Бренд'));
			
			$grid->updateColumn('name', array('title' => 'Модель', 'decorator' => '<a href="/admin/logistics/editcert/prodid/{{id}}"> {{name}}</a>'));
			$grid->updateColumn('cat', array('title' => 'Категория'));
			$grid->updateColumn('price', array('title' => 'Цена', 'searchType' => '>=', 'decorator' => '<input type="text" value="{{price}}" onchange="setvalue(\'car\',{{id}},\'price\', this.value)" /> '));
			$grid->updateColumn('qty_order', array('title' => 'Кол-во заказ', 'searchType' => '>=', 'decorator' => '<input type="text" value="{{qty_order}}" onchange="setvalue(\'car\',{{id}},\'qty_order\', this.value)" /> '));
			$grid->updateColumn('qty_prof', array('title' => 'Кол-во проформа', 'searchType' => '>=', 'decorator' => '<input type="text" value="{{qty_prof}}" onchange="setvalue(\'car\',{{id}},\'qty_prof\', this.value)" /> '));
			$grid->updateColumn('qty_inv', array('title' => 'Кол-во инвойс', 'searchType' => '>=', 'decorator' => '<input type="text" value="{{qty_inv}}" onchange="setvalue(\'car\',{{id}},\'qty_inv\', this.value)" /> '));
			$grid->updateColumn('cert_link', array('title' => 'Сертификат', 'decorator' => "<a href=\"http://alcotec.com.ua/certificates/{{brand}}/{{name}}/{{cert_link}}\">{{cert_link}}</a>"));
			$grid->updateColumn('cert_date', array('title' => 'Дата сертификата'));
			$grid->updateColumn('cert2_link', array('title' => 'Сертификат2', 'decorator' => "<a href=\"http://alcotec.com.ua/certificates/{{brand}}/{{name}}/{{cert2_link}}\">{{cert2_link}}</a>"));
			$grid->updateColumn('cert2_date', array('title' => 'Дата сертификата2'));
			$grid->updateColumn('decl_link', array('title' => 'Декларация', 'decorator' => "<a href=\"http://alcotec.com.ua/certificates/{{brand}}/{{name}}/{{decl_link}}\">{{decl_link}}</a>"));
			$filters = new Bvb_Grid_Filters();
			$filters->addFilter('brand', array('distinct' => array('field' => 'b.name', 'name' => 'b.name')));
			$filters->addFilter('cat', array('distinct' => array('field' => 'c_c.name', 'name' => 'c_c.name')));
			$filters->addFilter('name')->addFilter('qty_order')->addFilter('qty_inv')->addFilter('qty_prof');
			$grid->setPagination(50);
			$grid->addFilters($filters);
			$left = new Bvb_Grid_Extra_Column();
      		$left->position('left')->name('Удалить')->decorator('<a href="/admin/logistics/delcaritem/id/{{id}}/carid/{{car}}">x</a>');
      		$grid->addExtraColumns($left);
      		$grid->setColumnsHidden(array('id', 'car', 'id_item'));
			$this->view->grid = $grid->deploy();
			$this->view->car_id = intval($this->_getParam('carid'));
			$modlci = new LogisticsCarItems();
			$this->view->carstats = $modlci->getCarStats($this->_getParam('carid'));
		}
	}
	
	public function carsAction() {
		$db = Zend_Db_Table_Abstract::getDefaultAdapter();
		$config = new Zend_Config_Ini('./application/configs/grid.ini', 'production');
		$grid = Bvb_Grid::factory('table',$config,$gridId = '');
		$grid->query(new LogisticsCar());
		$grid->updateColumn('id', array('title' => 'ID', 'decorator' => '<a href="/admin/logistics/caredit/carid/{{id}}"> {{id}}</a>'));
		$grid->updateColumn('name', array('title' => 'Название', 'decorator' => '<a href="/admin/logistics/carprodsedit/carid/{{id}}"> {{name}}</a>'));
		$grid->updateColumn('plannedload', array('title' => 'Запланированная дата загрузки'));
		$grid->updateColumn('status', array('title' => 'Статус'));
		$form = new Bvb_Grid_Form();
		$left = new Bvb_Grid_Extra_Column();
      	$left->position('left')->name('Удалить')->decorator('<a href="/admin/logistics/delcar/carid/{{id}}">x</a>');
      	$grid->addExtraColumns($left);
		$grid->setDeleteConfirmationPage(true);
		
		$this->view->grid = $grid->deploy();
	}

	public function nullAction() {
		$this->_helper->removeHelper('viewRenderer');
		switch ($this->_getParam('what')) {
			case 'zakaz':
				$modlog = new Logistics();
				$modlog->update(array('qty_order' => 0));
				break;
			case 'prof':
				$modlog = new Logistics();
				$modlog->update(array('qty_prof' => 0));
				break;
			case 'inv':
				$modlog = new Logistics();
				$modlog->update(array('qty_inv' => 0));
				break;
		}
		$this->_redirect($_SERVER['HTTP_REFERER']);
	}
	
	public function getbrandsAction() {
		$this->_helper->removeHelper('viewRenderer');
		$modcatalog = new Products();
		$brands = $modcatalog->getAllBrands();
		$data = new Zend_Dojo_Data();
		$data->setIdentifier('id_brand');
		foreach ($brands as $k=>$v) {
			$items[] = array('id_brand' => $k, 'name' => $v);
		}
		$data->addItems($items);
		echo $data;
	}
	
	public function getitemsAction() {
		$this->_helper->removeHelper('viewRenderer');
		if ( $this->_hasParam('brand')) {
			$modproducts = new Products();
			$allitems = $modproducts->getAllItems(intval($this->_getParam('brand')));
			$data = new Zend_Dojo_Data();
			$data->setIdentifier('id');
			$itemss = array();
			foreach ($allitems as $item) {
				$items[] = array('id' =>$item['id'], 'name' => $item['name']);
			}
			$data->addItems($items);
			echo $data;
		}
	}
	
	public function addcaritemAction() {
		$this->_helper->removeHelper('viewRenderer');
		if ($this->_hasParam('item') && $this->_hasParam('id_car')) {
			$modcaritems = new LogisticsCarItems();
			$modcert = new Certificates();
			$price = $modcert->find(intval($this->_getParam('item')))->current()->price;
			$modcaritems->insert(array('id_item' => intval($this->_getParam('item')), 'price' => $price ? $price : 0 , 'id_car' => intval($this->_getParam('id_car'))));
		}
	}
	
	public function getcarsAction() {
		$this->_helper->removeHelper('viewRenderer');
		$modcars = new LogisticsCar();
		$cars = $modcars->getAllCars();
		$data = new Zend_Dojo_Data();
		$data->setIdentifier('id');
		foreach ($cars as $k=>$v) {
			$items[] = array('id' => $k, 'name' => $v);
		}
		$data->addItems($items);
		echo $data;
	}
	
	public function delcaritemAction() {
		$this->_helper->removeHelper('viewRenderer');
		if ($this->_getParam('id') && $this->_getParam('carid')) {
			$caritemsmod = new LogisticsCarItems();
			$result = $caritemsmod->find(intval($this->_getParam('carid')), intval($this->_getParam('id')));
			if ($result->getRow(0)) $result->getRow(0)->delete();
			$this->_redirect($_SERVER['HTTP_REFERER']);
		}
	}
	
	public function delcarAction() {
		$this->_helper->removeHelper('viewRenderer');
		if ($this->_getParam('carid')) {
			$carsmod = new LogisticsCar();
			$result = $carsmod->find(intval($this->_getParam('carid')));
			if ($result->getRow(0)) 
			$result->getRow(0)->delete();
			$this->_redirect($_SERVER ['HTTP_REFERER']);
		}
	}
}