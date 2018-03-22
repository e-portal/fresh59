<?php

class AnketaController extends Zend_Controller_Action {

    public function indexAction() {

    }
    
    public function adminAction() {
        $modAnketaQuestions = new AnketaQuestions();
        $this->view->questions = $modAnketaQuestions->fetchAll();       
    }
    
    public function addquestionAction() {
        $form = new Zend_Form();
        $form->addElement('text','title',array('label'=>'Название'));
        $form->addElement('text','answers',array('label'=>'Варианты ответа'));
        $form->setMethod('POST')->addElement('submit','submit',array('label'=>'Добавить', 'ignore'=>true));
        if ($this->_request->isGet()) {
            $this->view->form = $form;
        } else {
            if ($form->isValid($_POST)) {
                $values = $form->getValues();
                Zend_Debug::dump($values);
            }
        }
    }
    
    public function delquestionAction() {
        
    }
    
    public function editquestionAction() {
        
    }
    
    public function addvariantAction() {
        
    }
    
    public function delvariantAction() {
        
    }
    
    public function resultsAction() {
        
    }
}