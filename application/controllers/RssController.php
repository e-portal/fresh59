<?php

class RssController extends Zend_Controller_Action {

    public function init() {
        header('Content-Type: text/xml');
    }

    public function newsAction() {
        $feed = new Zend_Feed_Writer_Feed;
        $feed->setTitle('Новости 590.ua');
        $feed->setLink('http://590.ua/news');
        $feed->setFeedLink('http://590.ua/rss/news', 'atom');
        $feed->addAuthor(array(
            'name'  => '590.ua',
            'email' => 'rss@590.ua',
            'uri'   => 'http://590.ua/rss/news',
        ));
        $feed->setDateModified(time());

        /**
         * Add one or more entries. Note that entries must
         * be manually added once created.
         */
        $siteId = Zend_Registry::get('siteId');
        $modNews = new News();
        foreach ($modNews->fetchAll("site_id = {$siteId} and visible=1", 'date DESC') as $row) {
            if (empty($row['small_text'])) {
                continue;
            }
            $entry = $feed->createEntry();
            $entry->setTitle($row['name']);
            $entry->setLink('http://590.ua/news/'.$row['id']);
            $entry->addAuthor(array(
                'name'  => '590.ua',
                'email' => 'rss@590.ua',
                'uri'   => 'http://590.ua/news',
            ));
            $entry->setDateCreated(DateTime::createFromFormat('Y-m-d',$row['date'])->format('U'));
            $entry->setDateModified(DateTime::createFromFormat('Y-m-d',$row['date'])->format('U'));
            //$entry->setDescription(strip_tags($row['small_text']));
            $entry->setContent(
                strip_tags(html_entity_decode($row['small_text']))
            );
            $feed->addEntry($entry);
        }
        /**
         * Render the resulting feed to Atom 1.0 and assign to $out.
         * You can substitute "atom" with "rss" to generate an RSS 2.0 feed.
         */
        $out = $feed->export('atom');
        $this->view->feed = $out;
    }

    public function articlesAction() {
        $feed = new Zend_Feed_Writer_Feed;
        $feed->setTitle('Статьи 590.ua');
        $feed->setLink('http://590.ua/articles');
        $feed->setFeedLink('http://590.ua/rss/articles', 'atom');
        $feed->addAuthor(array(
            'name'  => '590.ua',
            'email' => 'rss@590.ua',
            'uri'   => 'http://590.ua/articles',
        ));
        $feed->setDateModified(time());

        /**
         * Add one or more entries. Note that entries must
         * be manually added once created.
         */
        $siteId = Zend_Registry::get('siteId');
        $modArticles = new Articles();
        foreach ($modArticles->fetchAll("site_id = {$siteId} and visible='1'", 'date DESC') as $row) {
            $entry = $feed->createEntry();
            $entry->setTitle($row['announce']);
            $entry->setLink('http://590.ua/articles/'.$row['id']);
            $entry->addAuthor(array(
                'name'  => '590.ua',
                'email' => 'rss@590.ua',
                'uri'   => 'http://590.ua/articles',
            ));
            $entry->setDateCreated(DateTime::createFromFormat('Y-m-d',$row['date'])->format('U'));
            $entry->setDateModified(DateTime::createFromFormat('Y-m-d',$row['date'])->format('U'));
            //$entry->setDescription(strip_tags($row['small_text']));
            $entry->setContent(
                strip_tags(html_entity_decode($row['short_text']))
            );
            $feed->addEntry($entry);
        }
        /**
         * Render the resulting feed to Atom 1.0 and assign to $out.
         * You can substitute "atom" with "rss" to generate an RSS 2.0 feed.
         */
        $out = $feed->export('atom');
        $this->view->feed = $out;
    }
}