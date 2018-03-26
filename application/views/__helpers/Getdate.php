<?php

class Zend_View_Helper_Getdate extends Zend_View_Helper_Abstract
{

    public function getdate($date, $val)
    {

        var_dump($date, $val);
        die;
        if ($date) {

            switch ($val) {
                case 'd':
                    return date("d", strtotime(str_replace('/', '-', $date)));
                    break;
                case 'm':
                    return date("m", strtotime(str_replace('/', '-', $date)));
                    break;
                case 'Y':
                    return date("Y", strtotime(str_replace('/', '-', $date)));
                    break;
                default:
                    return str_replace('/', '-', $date);
            }
        }
        return '';
    }
}