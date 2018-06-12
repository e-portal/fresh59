<div class="owls wrap">
    <!--<div>-->
    <div class="senn-container">
        <a class="blue" href="/articles">Перейти к статьям<span class="linn"></span></a>
        <div class="liner"><span>Это интересно</span></div>
        <div class="owl-main">

            <div class="owl owl-slide">
                {foreach from=$footer_articles item=article name=articles_slider}
                    {*{$article|@debug_print_var}*}
                    {if 3 == $smarty.foreach.articles_slider.index}
                        <div class="formu items">

                            <div class="liner"><span>Узнавай о новых акциях!</span></div>

                            <form action="">
                                <input type="text" placeholder="Имя">
                                <input type="email" placeholder="E-mail">
                                <input type="text" placeholder="Телефон" class="numb">
                                <div class="sendy acty">Подписаться</div>
                            </form>

                        </div>
                    {/if}
                    <div class="items">
                        <a href="/articles/{$article.url|mblower}">

                            {if $article.picture }
                                <div class="one-article-img">
                                    <img src="/assets/img/articles/{$article.picture}">
                                </div>
                            {else}
                                <div class="one-article-img">
                                    <img src="/assets/img/noimage.png">
                                </div>
                            {/if}

                            {*<h4>{$article.title|default:'title'}</h4>*}
                            <h4>{$article.announce|default:'announce'}</h4>

                            <div class="item-comen">
                                <div class="clock">
                                    <img src="/assets/img/clock.png" alt="">
                                    <p>{mdates arr=$article.date}</p>
                                </div>
                                <div class="clock">
                                    <img src="/assets/img/chat.png" alt="">
                                    <p>423</p>
                                </div>
                            </div>
                        </a>
                    </div>
                {/foreach}
            </div>

            <div class="formu">
                <div class="liner"><span>Узнавай о новых акциях!</span></div>

                <form action="">
                    <input type="text" placeholder="Имя">
                    <input type="email" placeholder="E-mail">
                    <input type="text" placeholder="Телефон" class="numb">
                    <div class="sendy acty">Подписаться</div>
                </form>

            </div>

        </div>
    </div>
</div>