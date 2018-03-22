<?php

class Zend_View_Helper_Gift extends Zend_View_Helper_Abstract {

    protected $_gifts = array();

    public function gift($params) {
        if (!isset($this->_gifts[$params['id']])) {
            $db = Zend_Db_Table_Abstract::getDefaultAdapter();
            $select = $db->select()
                ->from(array('a'=>'actions'))
                ->join(array('ci'=>'catalog_img'),'a.gift = ci.id_catalog',array('id','imgext'))
                ->order('ci.sort ASC')
                ->limit(1)
                ->where('a.id = ?',$params['id']);
            $image = $db->fetchRow($select);
            if ($image) {
               $this->_gifts[$params['id']] = $image['id'].'_s.'.$image['imgext'];
            }
        }
        return $this->_gifts[$params['id']];
    }
}