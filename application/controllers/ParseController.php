<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class ParseController extends Zend_Controller_Action {

	function indexAction() {
		$this->view->actions = 'priceua';
	}

	function priceuaAction() {
		set_time_limit(3000000);
		$modParser = new Parse();
		$modParser->parsePriceua();
	}

	function uploadpriceAction() {
		$form = new Zend_Form();
		$form->setAttrib('enctype', 'multipart/form-data');
		$element = new Zend_Form_Element_File('foxtrot');
		$element->setLabel('Прайс Фокстрот:')->setDestination('/tmp');
		$element->addValidator('Count', false, 1);
		$form->addElement($element, 'foxtrot');
		$emir = new Zend_Form_Element_File('emir');
		$emir->setLabel('Прайс Эмир:')->setDestination('/tmp');
		$emir->addValidator('Count', false, 1);
		$form->addElement($emir, 'emir');
		$mwm = new Zend_Form_Element_File('mwm');
		$mwm->setLabel('Прайс MWM:')->setDestination('/tmp');
		$emir->addValidator('Count', false, 1);
		$form->addElement($mwm, 'mwm');
		$form->addElement('submit', 'sbtbutton', array('label' => 'Отправить'))->setMethod('post')->setName('prices');
		if ($this->getRequest()->isGet()) {
			$this->view->form = $form;
		}

		elseif ($this->getRequest()->isPost()) {
			$modParser = new Parse();
			if ($form->foxtrot->isUploaded()) {
				$form->foxtrot->receive();
				$this->view->items = $modParser->parseFoxtrot($form->foxtrot->getFileName());
			}
			if ($form->emir->isUploaded()) {
				$form->emir->receive();
				$this->view->items = $modParser->parseEmir($form->emir->getFileName());
			}
			if ($form->mwm->isUploaded()) {
				$form->mwm->receive();
				$this->view->items = $modParser->parseMWM($form->mwm->getFileName());
			}
		}
	}

	function importercAction() {
		$form = new Zend_Form();
		$form->setAttrib('enctype', 'multipart/form-data');
		$element = new Zend_Form_Element_File('foxtrot');
		$element->setLabel('Прайс Erc:')->setDestination('/tmp');
		$element->addValidator('Count', false, 1);
		$form->addElement($element, 'foxtrot');
		$form->addElement('submit', 'sbtbutton', array('label' => 'Отправить'))->setMethod('post')->setName('prices');
		if ($this->getRequest()->isGet()) {
			$this->view->form = $form;
		} elseif ($this->getRequest()->isPost()) {
			$modParser = new Parse();
		if ($form->foxtrot->isUploaded()) {
				$form->foxtrot->receive();
				$this->view->items = $modParser->parseErc($form->foxtrot->getFileName());
			}
		}
	}
}
