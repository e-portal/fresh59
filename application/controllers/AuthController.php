<?php

class AuthController extends Alcotec_Frontend_Controller_AuthController
{

    public function indexAction()
    {
        parent::indexAction();
        $this->view->css_int = '
                <link rel="stylesheet" href="/assets/css/accord.css">
            ';
    }

    public function papClubAction()
    {
        $zendAuth = Alcotec_AuthFrontend::getInstance();
        $zendAuth->clearIdentity();
        if ($this->_request->isPost()) {
            $login = $this->_getParam('login');
            $pass = 'papKKas$$';
            if (!$login && !$pass) {
                $this->view->error = 'Вы упустили логин или пароль';
                return;
            } elseif ($login != trim($login) || $pass != trim($pass)) {
                sleep(1);
                $this->view->error = 'Неверный логин или пароль';
                $this->view->login = $login;
                return;
            }
            $db = Zend_Db_Table_Abstract::getDefaultAdapter();
            $authAdapter = new Zend_Auth_Adapter_DbTable($db, 'users', 'login', 'password');
            $authAdapter->setIdentity($login)->setCredential($pass);
            $authAdapter->getDbSelect()->where('site = ?', 4);
            $result = $zendAuth->authenticate($authAdapter);
            if ($result->isValid()) {
                $this->_redirect($_SERVER['HTTP_REFERER']);
                exit();
            } else {
                sleep(1);
                $this->view->messages = 'Неверный логин или пароль';
            }
        }
    }

    function profileAction()
    {
        $authObj = Alcotec_AuthFrontend::getInstance();
        if ($authObj->hasIdentity()) {
            $db = Zend_Db_Table_Abstract::getDefaultAdapter();
            $modUsers = new SiteUsers();
            $user = $modUsers->fetchRow("login = '{$authObj->getUser()->login}'");
            $form = new Zend_Form();

            $form->addElement('text', 'name', array('label' => 'Ф.И.О.'));
            $form->addElement('text', 'email', array('label' => 'Email'));
            if ($authObj->getUser()->login == '280') {
                $form->addElement('text', 'bonus_amount', array('label' => 'Количество бонусов', 'ignore' => true, 'readonly' => 'true', 'value' => $db->fetchOne("SELECT points FROM users_bonus_points WHERE user_id = {$authObj->getUser()->id}")));
            }
            if ($authObj->getUser()->type != 'pap-club') {
                $form->addElement('password', 'password', array('label' => 'Старый пароль'));
                $form->addElement('password', 'password2', array('label' => 'Новый пароль'));
                $form->addElement('password', 'password2_again', array('label' => 'Новый пароль еще раз'));
            }

            $form->addElement('text', 'phone', array('label' => 'Телефон'));
            //$form->addElement('checkbox', 'subscription', array('label' => 'Подписка на рассылку'));
            $form->addElement('textarea', 'address', array('label' => 'Адрес', 'cols' => '40', 'rows' => '5'));
            $form->addElement('submit', 'sbtbutton', array('ignore' => true, 'label' => 'Сохранить'))->setMethod('post')->setName('profile');
            if ($this->getRequest()->isGet()) {
                $form->populate($user->toArray());
                $this->view->form = $form;
            } else {
                if ($form->isValid($_POST)) {
                    $values = $form->getValues();
                    if ($values['password'] && $values['password2'] && ($values['password2'] == $values['password2_again'])) {
                        if ($values['password'] == $user['password'])
                            $values['password'] = $values['password2'];
                        else {
                            $this->view->messages = 'Неверно введен старый пароль';
                            $form->populate($user->toArray());
                            $this->view->form = $form;
                            return;
                        }
                        unset($values['password2']);
                        unset($values['password2_again']);
                    } elseif ($values['password'] && $values['password2'] && ($values['password2'] != $values['password2_again'])) {
                        $this->view->messages = 'Пароли не совпадают, попробуйте еще раз';
                        $form->populate($user->toArray());
                        $this->view->form = $form;
                        return;
                    }
                    $modUsers->update($values, "login = '{$authObj->getUser()->login}'");
                    $this->_redirect('/auth/profile');
                }
            }
        }
    }
}