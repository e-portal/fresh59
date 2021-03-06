<?php

class Zend_View_Helper_Country extends Zend_View_Helper_Abstract
{

    public function country($params)
    {

        $countries = [
            'Германия' => ['Germany.png', 'Germany'],
            'Німеччина' => ['Germany.png', 'Germany'],
            'Germany' => ['Germany.png', 'Germany'],
            'германия' => ['Germany.png', 'Germany'],
            'німеччина' => ['Germany.png', 'Germany'],
            'germany' => ['Germany.png', 'Germany'],
            'Италия' => ['Italy.png', 'Italy'],
            'Італія' => ['Italy.png', 'Italy'],
            'Italy' => ['Italy.png', 'Italy'],
            'italia' => ['Italy.png', 'Italy'],
            'Italia' => ['Italy.png', 'Italy'],
            'италия' => ['Italy.png', 'Italy'],
            'італія' => ['Italy.png', 'Italy'],
            'italy' => ['Italy.png', 'Italy'],
            'Словения' => ['Slovenia.png', 'Slovenia'],
            'Словенія' => ['Slovenia.png', 'Slovenia'],
            'Slovenia' => ['Slovenia.png', 'Slovenia'],
            'словения' => ['Slovenia.png', 'Slovenia'],
            'словенія' => ['Slovenia.png', 'Slovenia'],
            'slovenia' => ['Slovenia.png', 'Slovenia'],
            'Словакия' => ['Slovakia.png', 'Slovakia'],
            'словакия' => ['Slovakia.png', 'Slovakia'],
            'Словаччина' => ['Slovakia.png', 'Slovakia'],
            'словаччина' => ['Slovakia.png', 'Slovakia'],
            'slovakia' => ['Slovakia.png', 'Slovakia'],
            'Slovakia' => ['Slovakia.png', 'Slovakia'],
            'Украина' => ['Ukraine.png', 'Ukraine'],
            'Україна' => ['Ukraine.png', 'Ukraine'],
            'Ukraine' => ['Ukraine.png', 'Ukraine'],
            'украина' => ['Ukraine.png', 'Ukraine'],
            'україна' => ['Ukraine.png', 'Ukraine'],
            'ukraine' => ['Ukraine.png', 'Ukraine'],
            'Франция' => ['France.png', 'France'],
            'Франція' => ['France.png', 'France'],
            'France' => ['France.png', 'France'],
            'франция' => ['France.png', 'France'],
            'франція' => ['France.png', 'France'],
            'france' => ['France.png', 'France'],
            'Польша' => ['Poland.png', 'Poland'],
            'Польща' => ['Poland.png', 'Poland'],
            'Poland' => ['Poland.png', 'Poland'],
            'польша' => ['Poland.png', 'Poland'],
            'польща' => ['Poland.png', 'Poland'],
            'poland' => ['Poland.png', 'Poland'],
            'Сербия' => ['Serbia.png', 'Serbia'],
            'Сербія' => ['Serbia.png', 'Serbia'],
            'Serbia' => ['Serbia.png', 'Serbia'],
            'сербия' => ['Serbia.png', 'Serbia'],
            'сербія' => ['Serbia.png', 'Serbia'],
            'serbia' => ['Serbia.png', 'Serbia'],
            'Турция' => ['Turkey.png', 'Turkey'],
            'Турція' => ['Turkey.png', 'Turkey'],
            'Turkey' => ['Turkey.png', 'Turkey'],
            'турция' => ['Turkey.png', 'Turkey'],
            'турція' => ['Turkey.png', 'Turkey'],
            'turkey' => ['Turkey.png', 'Turkey'],
            'Литва' => ['Lithuania.png', 'Lithuania'],
            'Lithuania' => ['Lithuania.png', 'Lithuania'],
            'литва' => ['Lithuania.png', 'Lithuania'],
            'lithuania' => ['Lithuania.png', 'Lithuania'],
            'Таиланд' => ['Thailand.png', 'Thailand'],
            'Таїланд' => ['Thailand.png', 'Thailand'],
            'Thailand' => ['Thailand.png', 'Thailand'],
            'таиланд' => ['Thailand.png', 'Thailand'],
            'таїланд' => ['Thailand.png', 'Thailand'],
            'thailand' => ['Thailand.png', 'Thailand'],
            'Венгрия' => ['Hungary.png', 'Hungary'],
            'Угорщина' => ['Hungary.png', 'Hungary'],
            'Hungary' => ['Hungary.png', 'Hungary'],
            'венгрия' => ['Hungary.png', 'Hungary'],
            'угорщина' => ['Hungary.png', 'Hungary'],
            'hungary' => ['Hungary.png', 'Hungary'],
            'Румыния' => ['Romania.png', 'Romania'],
            'Румунія' => ['Romania.png', 'Romania'],
            'Romania' => ['Romania.png', 'Romania'],
            'румыния' => ['Romania.png', 'Romania'],
            'румунія' => ['Romania.png', 'Romania'],
            'romania' => ['Romania.png', 'Romania'],
            'Белоруссия' => ['Belarus.png', 'Belarus'],
            'Белорусь' => ['Belarus.png', 'Belarus'],
            'Білорусь' => ['Belarus.png', 'Belarus'],
            'Belarus' => ['Belarus.png', 'Belarus'],
            'белоруссия' => ['Belarus.png', 'Belarus'],
            'белорусь' => ['Belarus.png', 'Belarus'],
            'білорусь' => ['Belarus.png', 'Belarus'],
            'belarus' => ['Belarus.png', 'Belarus'],
            'Португалия' => ['Portugal.png', 'Portugal'],
            'Португалія' => ['Portugal.png', 'Portugal'],
            'Portugal' => ['Portugal.png', 'Portugal'],
            'португалия' => ['Portugal.png', 'Portugal'],
            'португалія' => ['Portugal.png', 'Portugal'],
            'portugal' => ['Portugal.png', 'Portugal'],
            'Болгария' => ['Bulgaria.png', 'Bulgaria'],
            'Болгарія' => ['Bulgaria.png', 'Bulgaria'],
            'Bulgaria' => ['Bulgaria.png', 'Bulgaria'],
            'болгария' => ['Bulgaria.png', 'Bulgaria'],
            'болгарія' => ['Bulgaria.png', 'Bulgaria'],
            'bulgaria' => ['Bulgaria.png', 'Bulgaria'],
            'Великобритания' => ['United-Kingdom.png', 'UK'],
            'Великобританія' => ['United-Kingdom.png', 'UK'],
            'United Kingdom' => ['United-Kingdom.png', 'UK'],
            'великобритания' => ['United-Kingdom.png', 'UK'],
            'великобританія' => ['United-Kingdom.png', 'UK'],
            'united kingdom' => ['United-Kingdom.png', 'UK'],
            'Great Britain' => ['United-Kingdom.png', 'UK'],
            'Южная Корея' => ['South-Korea.png', 'Korea'],
            'Південна Корея' => ['South-Korea.png', 'Korea'],
            'South Korea' => ['South-Korea.png', 'Korea'],
            'южная корея' => ['South-Korea.png', 'Korea'],
            'південна корея' => ['South-Korea.png', 'Korea'],
            'south korea' => ['South-Korea.png', 'Korea'],
            'Дания' => ['Denmark.png', 'Denmark'],
            'Данія' => ['Denmark.png', 'Denmark'],
            'Denmark' => ['Denmark.png', 'Denmark'],
            'дания' => ['Denmark.png', 'Denmark'],
            'данія' => ['Denmark.png', 'Denmark'],
            'denmark' => ['Denmark.png', 'Denmark'],
            'Хорватия' => ['Croatia.png', 'Croatia'],
            'Хорватія' => ['Croatia.png', 'Croatia'],
            'Croatia' => ['Croatia.png', 'Croatia'],
            'хорватия' => ['Croatia.png', 'Croatia'],
            'хорватія' => ['Croatia.png', 'Croatia'],
            'croatia' => ['Croatia.png', 'Croatia'],
            'Россия' => ['Russia.png', 'Russia'],
            'Росія' => ['Russia.png', 'Russia'],
            'Russia' => ['Russia.png', 'Russia'],
            'россия' => ['Russia.png', 'Russia'],
            'росія' => ['Russia.png', 'Russia'],
            'russia' => ['Russia.png', 'Russia'],
            'Китай' => ['China.png', 'China'],
            'КНР' => ['China.png', 'China'],
            'China' => ['China.png', 'China'],
            'CNR' => ['China.png', 'China'],
            'Китайская Народная Республика' => ['China.png', 'China'],
            'Китайська Народна Республіка' => ['China.png', 'China'],
            'Republic of China' => ['China.png', 'China'],
            'китай' => ['China.png', 'China'],
            'кнр' => ['China.png', 'China'],
            'china' => ['China.png', 'China'],
            'cnr' => ['China.png', 'China'],
            'китайская народная республика' => ['China.png', 'China'],
            'китайська народна республіка' => ['China.png', 'China'],
            'republic of china' => ['China.png', 'China'],
            'Швеция' => ['Sweden.png', 'Sweden'],
            'Sweden' => ['Sweden.png', 'Sweden'],
        ];

        if (1 == $params['source']) {
            if (array_key_exists($params['country'], $countries)) {
                return $countries[$params['country']][0];
            } else {
                return 'no_flag.png';
            }

        } else {
            if (array_key_exists($params['country'], $countries)) {
                return $countries[$params['country']][1];
            } else {
                return 'N\A';
            }
        }
    }
}
