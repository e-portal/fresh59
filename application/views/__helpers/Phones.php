<?php

class Zend_View_Helper_Phones extends Zend_View_Helper_Abstract
{

    public function phones($region)
    {
        $phones = explode('; ', preg_replace('/\s{2,}/', ' ', $region['str']));

        $data = '';
        if (!empty($phones[0])) {
            foreach ($phones as $phone) {
                $data .= '<li class="tregion_' . $region['id'] . '"><a href="tel:+38' . preg_replace('/[^\d]+/', '', $phone) . '"><img src="/assets/img/' . $this->getPic($phone) . '" alt="">' . $phone . '</a></li>';
            }
        }
        return $data;
    }

    public function getPic($phone)
    {
        preg_match('/\(([\d]+)\)/', $phone, $matches);
        if (!empty($matches[1])) {
            switch ($matches[1]) {
                case '050':
                    return 'vodafone-phone.png';
                case '066':
                    return 'vodafone-phone.png';
                case '0896':
                    return 'vodafone-phone.png';
                case '095':
                    return 'vodafone-phone.png';
                case '99':
                    return 'vodafone-phone.png';
                case '063':
                    return 'lifecell-phone.png';
                case '073':
                    return 'lifecell-phone.png';
                case '093':
                    return 'lifecell-phone.png';
                case '067':
                    return 'kievstar-phone.png';
                case '068':
                    return 'kievstar-phone.png';
                case '0897':
                    return 'kievstar-phone.png';
                case '096':
                    return 'kievstar-phone.png';
                case '097':
                    return 'kievstar-phone.png';
                case '098':
                    return 'kievstar-phone.png';
                default:
                    return 'city-phone.png';
            }
        }
        return 'city-phone.png';
    }
}