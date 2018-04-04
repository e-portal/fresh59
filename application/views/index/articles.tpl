<div class="owls wrap">
    <!--<div>-->
    <div class="senn-container">
        <a class="blue" href="/articles">Перейти к статьям<span class="linn"></span></a>
        <div class="liner"><span>Это интересно</span></div>
        <div class="owl-main">

            <div class="owl">
                {foreach from=$footer_articles item=article}
                    {*{$article|@debug_print_var}*}
                    <div class="items">
                        <a href="/" class="items">

                            {if isset($article.img) }
                                <div class="one-article-img">
                                    <img src="/assets/img/articles/{$article.img}">
                                </div>
                            {else}
                                <div class="one-article-img">
                                    <img src="/assets/img/articles/art{1|rand:6}.png">
                                    {*<img src="/assets/img/noimage.png">*}
                                </div>
                            {/if}

                            <h4>{$article.title|default:'title'}</h4>
                            {*<h4>{$article.announce|default:'announce'}</h4>*}

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