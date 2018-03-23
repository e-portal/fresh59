<?php

class Zend_View_Helper_Mdates extends Zend_View_Helper_Abstract
{

    public function mdates($date = null)
    {
        if ($date) {
            $months = array(
                1 => 'января',
                2 => 'февраля',
                3 => 'марта',
                4 => 'апреля',
                5 => 'мая',
                6 => 'июня',
                7 => 'июля',
                8 => 'августа',
                9 => 'сентября',
                10 => 'октября',
                11 => 'ноября',
                12 => 'декабря');

            $day = date("d", strtotime('2017-02-23'));
            $year = date("Y", strtotime('2017-02-23'));
            $month = $months[date("n", strtotime('2017-02-23'))];

            return $day . ' ' . $month . ' ' . $year;
        }
    }
}