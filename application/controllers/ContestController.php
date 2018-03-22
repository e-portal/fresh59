<?php

class ContestController extends Zend_Controller_Action {

    public function indexAction() {
            $modContest = new Contest();
            $this->view->randomPhoto = $modContest->getRandom();
            $this->view->lastPhotos = $modContest->fetchAll('approved=1','id DESC');
    }
    
    public function photoAction() {
            if ($this->_hasParam('id')) {
                $modContest = new Contest();
                $photo = $modContest->find(intval($this->_getParam('id')));
                $this->view->end = date('m')=='05' ? true : false;

                if ($photo->count()!=0) {
                    $this->view->photo = $photo->current()->toArray();

                    if ($this->view->photo['approved']==1) {
                        $this->view->lastPhotos = $modContest->fetchAll('approved=1','id DESC');
                        if (!$modContest->voteAllowed())
                            $this->view->voted=true;
                    } else {
                        $this->getResponse()->setHttpResponseCode(404);
                        $this->_redirect('404');
                    }
                } else {
                    $this->getResponse()->setHttpResponseCode(404);
                    $this->_redirect('404');
                }
            }
    }
    
    public function voteAction() {
        $this->_helper->removeHelper('viewRenderer');
        if ($this->_request->isXmlHttpRequest() && $this->_hasParam('id')) {
            $modContest = new Contest();
            $photo = $modContest->find(intval($this->_getParam('id')));
            if ($photo->count()!=0) {
                if ($modContest->voteAllowed()) {
                    $modContest->vote($photo->current());
                    echo 'ok';
                } else {
                    echo 'Вы уже проголосовали сегодня.';
                }
            } else {
                $this->getResponse()->setHttpResponseCode(404);
                $this->_redirect('404');
            }
        }
    }
    
    public function allAction() {
        $modContest = new Contest();
        $this->view->topPhotos = $modContest->fetchAll('approved=1', 'votes DESC',3);
        $this->view->allPhotos = $modContest->fetchAll('approved=1', 'votes DESC');
    }
    
    public function sendAction() {
        $form = new Zend_Form();
        $form->addElement('text','name',array('required'=>'true', 'label'=>'Имя'));
        $form->name->addErrorMessage('Введите Ваше имя');
        
        $form->addElement('text','phone',array('required'=>'true', 'label'=>'Телефон'));
        $form->name->addErrorMessage('Введите Ваш телефон');
        
        $form->addElement('text','order',array('required'=>false, 'label'=>'Номер чека'));
         
        $form->addElement('text','email',array('required'=>'true', 'label'=>'Ваш e-mail','validators'=>array(new Zend_Validate_EmailAddress)));
        $form->email->addErrorMessage('Введите правильный e-mail');
        
        $form->addElement('file','img',array('required'=>'true', 'label'=>'Фото','validators'));
        $form->img->addValidator('Size', false, '10MB');
        $form->img->addValidator('Count', false, 1);
        $form->img->addValidator('Extension', false, 'jpg,gif,png');
        
        $form->addElement('textarea','comments',array('label'=>'Подпись к фото','rows'=>5,'cols'=>25));
       
        $form->img->addErrorMessage('Выберите фото');
        
        $form->addElement('submit', 'sbtbutton', array('label' => 'Отправить','ignore'=>true))->setMethod('post')->setName('prices');
		
        if ($this->_request->isGet()) {
            $this->view->form = $form;
        }
        elseif ($this->_request->isPost()) {
            if ($form->isValid($_POST)) {
                $values = $form->getValues();
                $filename = $form->img->getFileName();
                $thumb = new Alcotec_Thumbnail($filename);
                $thumb->resize(800,800);
                
                $newname = time();
    		    $newname .= '.';
    		    $newname .=end(explode('.',$filename));
    		    $thumb->save("/var/www/html/590.ua/public/contest/{$newname}");

			    $modContest = new Contest();
			    if ($id = $modContest->insert(
			        array('name'=>htmlspecialchars($values['name']), 
			        	  'email'=>htmlspecialchars($values['email']),
			              'phone'=>htmlspecialchars($values['phone']),
			        	  'filename'=>$newname,
			        	  'comments'=>htmlspecialchars($values['comments']),
			        	  'orderId'=>$values['order'] ? htmlspecialchars($values['order']) : '')));
			        $this->view->form = "Ваша заявка №{$id} принята. После проверки Ваше фото появится в конкурсе.";
            } else {
                $form->populate($_POST);
                $this->view->form = $form;
            }
        }
    }
}