<?php

class CommentsController extends Zend_Controller_Action {

    public function setAction() {
        $request = $this->getRequest();
        if ($request->isXmlHttpRequest()){
            $types = array('useful','useless');
            $id = intval($this->_getParam('id'));
            $type = $this->_getParam('is');
            if (in_array($type,$types)) {
                $modComments = new Comments();
                $modComments->set($id, $type);
                $this->_helper->json(array('result'=>$modComments->set($id, $type)));
            }
        }
    }
}