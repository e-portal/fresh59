<?php

class Zend_View_Helper_Getdate extends Zend_View_Helper_Abstract
{

    public function getdate($date)
    {

        if ($date[0]) {

            switch ($date[1]) {
                case 'd':
                    return date("d", strtotime(str_replace('/', '-', $date[0])));
                    break;
                case 'm':
                    return date("m", strtotime(str_replace('/', '-', $date[0])));
                    break;
                case 'Y':
                    return date("Y", strtotime(str_replace('/', '-', $date[0])));
                    break;
                default:
                    return str_replace('/', '-', $date);
            }
        }
        return '';
    }
}