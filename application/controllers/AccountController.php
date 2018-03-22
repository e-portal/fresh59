<?php

class AccountController extends Zend_Controller_Action {

	public function registerAction() {
		$this->view->data = [
			'text' => 'registerAction!',
		];

		if ($this->_request->isPost()) {
			$post = $this->_request->getPost();
			$account = new Account();
			if ($account->create($post)) {
				$login = trim($post['login']);
				$pass = trim($post['password']);
				$this->_tryAuth($login, $pass);
			}
		}
	}

	public function indexAction() {
		$zendAuth = AccountAuth::getInstance();
		if (!$zendAuth->hasIdentity()) {
			$this->_redirect('/account/login');
			exit;
		}
	}

	public function editAction() {
		$zendAuth = AccountAuth::getInstance();
		if (!$zendAuth->hasIdentity()) {
			$this->_redirect('/account/login');
			exit;
		}
	}

	public function loginAction() {
	}

	public function logoutAction() {
		$zendAuth = AccountAuth::getInstance ();
		$zendAuth->clearIdentity();
		$this->_redirect('/account/login');
		exit;
	}

	public function ordersAction() {
		$zendAuth = AccountAuth::getInstance();
		if (!$zendAuth->hasIdentity()) {
			$this->_redirect('/account/login');
			exit;
		}
	}

	public function basketAction() {
		$zendAuth = AccountAuth::getInstance();
		if (!$zendAuth->hasIdentity()) {
			$this->_redirect('/account/login');
			exit;
		}
	}

	public function bonusesAction() {
		$zendAuth = AccountAuth::getInstance();
		if (!$zendAuth->hasIdentity()) {
			$this->_redirect('/account/login');
			exit;
		}
	}

	public function whishlistAction() {
		$zendAuth = AccountAuth::getInstance();
		if (!$zendAuth->hasIdentity()) {
			$this->_redirect('/account/login');
			exit;
		}
	}

	public function subscribesAction() {
		$zendAuth = AccountAuth::getInstance();
		if (!$zendAuth->hasIdentity()) {
			$this->_redirect('/account/login');
			exit;
		}
	}

	public function authAction() {
		if ($this->_request->isPost()) {
			$post = $this->_request->getPost();
			$login = trim($post['phone']);
			$pass = trim($post['password']);
			$this->_tryAuth($login, $pass);
		}
		$this->_redirect('/account/login');
		exit;
	}

	private function _tryAuth($login, $pass) {
        $zendAuth = Zend_Auth::getInstance();
        $zendAuth->clearIdentity();
    	$db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $authAdapter = new Zend_Auth_Adapter_DbTable($db, 'accounts', 'phone', 'password');
        $authAdapter->setIdentity($login)->setCredential($pass);
        $result = $zendAuth->authenticate($authAdapter);
        $redirectUrl = ($result->isValid()) ? '/account' : '/account/login';
       	$this->_redirect($redirectUrl);
        exit;
	}
}