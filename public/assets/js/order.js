$(document).ready(function () {
    // перенос строк корзина мобайл
    function appentTOOO() {
        a = $('.basket-section')
        for (var i = 0; i < a.length; i++) {
            a.eq(i).find('.prod-price-total').clone().appendTo(a.eq(i).find('.basket-prod-text'))
            a.eq(i).find('.basket-bonus').clone().appendTo(a.eq(i).find('.basket-section-prod'))
            a.eq(i).find('.prod-price-total').eq(1).remove()
            a.eq(i).find('.basket-bonus').eq(0).remove()
        }
    }

    /*click on cart-button*/

    $('.add-to-cart').bind('click', doObject);
    function add_to_cart(){
        $('.add-to-cart').bind('click', function () {
            /*stop scroll*/

            if (window.matchMedia('(max-width: 1025px)').matches) {
                $('html, body').css('overflow', 'hidden');
            } else {
                $('html, body').css('overflow', 'hidden');
            }
            if (window.matchMedia("(max-width: 767px)").matches) {
                appentTOOO()
            }

            /*show popup*/
            $('body').find('.popup-baskets.popup').css('display', 'flex');
            $('.popup-content').addClass('show');
            $('.close').addClass('show');
            $('header .baskets .numeral').text(i);
        });
    }
    add_to_cart()


    var basket = localStorage.getItem('basket') != undefined ? JSON.parse(localStorage.getItem('basket')) : {};

    if ($('body').hasClass('cart')) {
        basket != null ? doBasket(basket) : ''
    }

    function doObject() {/* create object product*/
        var prod_id = $(this).attr('data-id');


        if (basket[prod_id] == undefined) {
            prod_data = $(this).data();
            prod_data.quantity = 1;
            basket[prod_id] = prod_data;
            doBasket(basket);
        } else {
            basket[prod_id].quantity = parseInt(basket[prod_id].quantity) + 1;
            doBasket(basket);

        }
        window.localStorage.setItem('basket', JSON.stringify(basket));
    }



    function doBasket(obj) {/* add basket-section-prod*/

        $('.basket-table').html(' ');
        i = 0;

        for (prod_data in obj) {
            /*---------POPUP---------*/
            $('<div class="basket-section basket-section' + i + '">\n' +
                '                        <div class="basket-section-prod flexibal">\n' +
                '                            <div class="basket-prod flexibal">\n' +
                '                                <div class="basket-prod-img"><img src="' + obj[prod_data].img + '"></div>\n' +
                '                                <div class="basket-prod-text">\n' +
                '                                    <div class="basket-prod-name">' + obj[prod_data].name + '</div>\n' +
                '                                    <div class="prod-code">Код товара <span>' + obj[prod_data].id + '</span></div>\n' +
                '                                    <div class="basket-bonus basket-bonus' + i + '"></div>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                            <div class="basket-prod-number">\n' +
                '                                <div class="input-number-wrap">\n' +
                '                                    <span class="input-number-decrement decrement">–</span>\n' +
                '                                    <input class="input-number" type="text" value="' + obj[prod_data].quantity + '" min="0" max="10">\n' +
                '                                    <span class="input-number-increment">+</span>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                            <div class="basket-price">' + (obj[prod_data].price > obj[prod_data].sale ? obj[prod_data].sale : obj[prod_data].price) + '</div>\n' +
                '                            <div class="prod-price-total" data-value="' + ((obj[prod_data].price > obj[prod_data].sale ? obj[prod_data].sale : obj[prod_data].price) ) + '">' + ((obj[prod_data].price > obj[prod_data].sale ? obj[prod_data].sale : obj[prod_data].price) * obj[prod_data].quantity) + '</div>\n' +
                '                            <div class="basket-delete"><div class="basket-delete-icon"></div></div>\n' +
                '                        </div>\n' +
                '                    </div>').appendTo('.basket-table');

            if (obj[prod_data].giftId !== undefined) {
                $('<div class="basket-section-gift flexibal">\n' +
                    '                                      <div class="basket-prod flexibal">\n' +
                    '                                           <div class="basket-prod-img"></div>\n' +
                    '                                           <div class="basket-gift flexibal">\n' +
                    '                                                <div class="basket-prod-img"><img src="' + obj[prod_data].giftImg + '"></div>\n' +
                    '                                             <div class="">\n' +
                    '                                                   <div class="basket-gift-name">' + obj[prod_data].giftName + '</div>\n' +
                    '                                                  <div class="prod-code">Код товара <span>' + obj[prod_data].giftId + '</span></div>\n' +
                    '                                                </div>\n' +
                    '                                          </div>\n' +
                    '                                       </div>\n' +
                    '                                       <div class="basket-prod-number red">подарок!</div>\n' +
                    '                                       <div class="basket-price"></div>\n' +
                    '                                       <div class=""></div>\n' +
                    '                                       <div class=""></div>\n' +
                    '                                   </div>').appendTo('.basket-section' + i);
            }
            if (obj[prod_data].bonus !== undefined) {
                $('<span class="red"> + ' + obj[prod_data].bonus + ' грн</span> на <a>Бонусный счет</a>').appendTo('.basket-bonus' + i);
            }

            if (obj[prod_data].serttitle !== undefined) {
                $('<div class="basket-section-service flexibal sertficat">\n' +
                    '                                      <div class="basket-prod flexibal">\n' +
                    '                                           <div class="basket-prod-img"></div>\n' +
                    '                                           <div class="certificates">\n' +
                    '                            <form>\n' +
                    '                                <label class="servs">' + obj[prod_data].serttitle + '\n' +
                    '                                    <input type="checkbox" >\n' +
                    '                                    <span class="checkmark"></span>\n' +
                    '                                    <!--<em>940 грн</em>-->\n' +
                    '                                </label>\n' +
                    '                            </form>\n' +
                    '                        </div>\n' +
                    '                                       </div>\n' +
                    '                                       <div class="basket-prod-number red"></div>\n' +
                    '                                       <div class="basket-price total">' + obj[prod_data].sertprice + '</div>\n' +
                    '                                       <div class=""></div>\n' +
                    '                                       <div class=""></div>\n' +
                    '                                    </div>').appendTo('.basket-section' + i);

            }


            i++

        }


        totalCart();
        bindings();
        // servs();


    }

    // $(".certificates input").change(function () {
    //     doBasket(basket);
    //     var str = "";
    //     if ($('input').checked) {
    //         console.log(123);
    //     }
    //     else {
    //         console.log(321);
    //     }
    // })

    /*close popup*/
    $('.closeX, .close, .closeBtn, .take-order-btn').on('click', function () {

        $('.popup-content').removeClass('show').addClass('hide');
        $('.close').removeClass('show').addClass('hide');

        if (window.matchMedia('(max-width: 900px)').matches) {
            $('html, body').css('overflow', 'auto');
        } else {
            $('html, body').css('overflow', 'auto');
        }

        setTimeout(function () {
            $('.popup-content').removeClass('hide');
            $('.close').removeClass('hide');
            $('.popup').css('display', 'none');
        }, 1000);
    });
    /*end close popup*/

    $('.baskets').click(function () {
        $('.popup-baskets').css('display', 'flex');
        doBasket(basket);
        if (window.matchMedia("(max-width: 767px)").matches) {
            appentTOOO()
        }

    });

    /*---------autorisation---------*/


    // $('.pipl').click(function () {
    //     $('.autorisation').css('display', 'flex');
    //     /*stop scroll*/
    //     if (window.matchMedia('(max-width: 900px)').matches) {
    //         $('html, body').css('overflow', 'hidden');
    //     } else {
    //         $('html, body').css('overflow', 'hidden');
    //     }
    //
    //     /*show popup*/
    //     $('.popup-content').addClass('show');
    //     $('.close').addClass('show');
    //
    // });

    $('.login-popup').click(function () {
        autorize = $(this);
        $('.autorisation').css('display', 'flex');
        /*stop scroll*/
        if (window.matchMedia('(max-width: 900px)').matches) {
            $('html, body').css('overflow', 'hidden');
        } else {
            $('html, body').css('overflow', 'hidden');
        }

        if (autorize.hasClass('pipl')) {
            $('.popup-content').find('.login-span').html('Авторизация');
        } else if (autorize.hasClass('bonus')) {
            $('.popup-content').find('.login-span').html('Авторизируйтесь для просмотра бонусов!');
        } else if (autorize.hasClass('vijen')) {
            $('.popup-content').find('.login-span').html('Авторизируйтесь для просмотра списка желаний!');
        }

        /*show popup*/
        $('.popup-content').addClass('show');
        $('.close').addClass('show');

    });
    /*---------end autorisation---------*/
    /*---------end POPUP---------*/

    if ($('body').hasClass('cart')) {  /*page of cart*/
        $('html, body').css('overflow', 'auto');
        $('.popup').css('display', 'none');
        // bindings();
        console.log(i);
        $('header .baskets .numeral').text(i);
    }
    // $('body').each(function () {
    //
    // })   /*page of cart*/
    // $('body').bind(function () {
    //
    // })

    if ($('body')) {  /*page of cart*/
        basket != null ? doBasket(basket) : ''
        $('.popup').css('display', 'none');
        $('header .baskets .numeral').text(i)
    }

    /*---------delete PRODUCT---------*/
    function delProd() {
        idObj = $(this).parents('.basket-section-prod').find('.prod-code span').html();
        delete basket[idObj];
        $(this).parents('.basket-section').remove();

        // doObject();
        window.localStorage.setItem('basket', JSON.stringify(basket));
        // basket != null ? doBasket(basket) : ''
        // bindings();
        doBasket(basket);


    }

    /*---------end delete PRODUCT---------*/


    /*---------Plus-minus PRODUCT---------*/
    function incremProd() {
        var $input = $(this).parent().find('input');
        c = $(this).hasClass('decrement') ? parseInt($input.val()) - 1 : parseInt($input.val()) + 1;
        if (c <= 0) {
            c = 1;
        }
        $input.val(c);
        $input.trigger('change');
        doBasket(basket);
    }

    /*---------end Plus-minus PRODUCT---------*/


    /*---------Count price---------*/
    function inNumberProd() {

        var numcount = $(this).val();
        idObj = $(this).parents('.basket-section-prod').find('.prod-code span').html()
        basket[idObj].quantity = $(this).val();

        var startPrice = $(this).parents('.basket-section-prod').find('.prod-price-total').attr('data-value');
        $(this).parents('.basket-section-prod').find('.prod-price-total').html((startPrice) * numcount);
        // $(this).parents('.basket-section-prod').find('.prod-price-total').attr('data-value', startPrice * numcount);
        totalCart();

        window.localStorage.setItem('basket', JSON.stringify(basket));


    }


    /*---------end Count price---------*/


    /*---------Count total price---------*/
    var totalPrice = 0;


    function totalCart() {
        totalPrice = 0;

        $('.prod-price-total').each(function () {
            totalPrice += parseInt($(this).html());
        });

        // priseServ = 0;
        // $('чекнутый').each(function () {
        //     priseServ += $(цена).html();
        // });

        $('.count-total').html(totalPrice);
        // window.localStorage.setItem('basket', JSON.stringify(basket));
    }


    /*---------end Count total price---------*/

    /*---------BIND UNBIND---------*/
    function bindings() {
        $('.basket-delete').unbind('click', delProd);
        $('.input-number-decrement').unbind('click', incremProd);
        $('.input-number-increment').unbind('click', incremProd);
        $('.input-number').unbind('change', inNumberProd);


        $('.basket-delete').bind('click', delProd);
        $('.input-number-decrement').bind('click', incremProd);
        $('.input-number-increment').bind('click', incremProd);
        $('.input-number').bind('change', inNumberProd);
    }

    /*---------end BIND UNBIND---------*/

    /*---------Delivery show-hide---------*/
    $('input.ShowOrHide').click(function () {

        var checked = $('input.ShowOrHide:checked');

        if (checked.length == 0) {
            $("div.ShowOrHide").show();
        } else {
            $("div.ShowOrHide").hide();
            $('div#' + $(this).val()).css('display', 'flex');
        }
    });
    /*---------Delivery show-hide---------*/


    /*---------PORTFOLIO TABS---------*/

    $('.tabs').each(function () {
        var _this = $(this);
        var $tabButtonItem = _this.find('.tab-button li'),
            $tabSelect = _this.find('.tab-select'),
            $tabContents = _this.find('.tab-contents'),
            activeClass = 'is-active';
        if ($('body').hasClass('payment-page')) {
            $tabContents.first().hide();
            $('.tab-contents.is-active').show();
        } else {
            $tabButtonItem.first().addClass(activeClass);
            $tabContents.first().addClass(activeClass);
            $tabContents.not(':first').hide();
        }

        $tabButtonItem.find('a').on('click', function (e) {
            var target = $(this).attr('href');

            $tabButtonItem.removeClass(activeClass);
            $(this).parent().addClass(activeClass);
            $tabSelect.val(target);
            $tabContents.hide().removeClass(activeClass);
            $(target).show().addClass(activeClass);
            e.preventDefault();
        });

        $tabSelect.on('change', function () {
            var target = $(this).val();
            var targetSelectNum = $(this).prop('selectedIndex');

            $tabButtonItem.removeClass(activeClass);
            $tabButtonItem.eq(targetSelectNum).addClass(activeClass);
            $tabContents.hide().removeClass(activeClass);
            $(target).show().addClass(activeClass);
        });

    });
    /*---------end PORTFOLIO TABS---------*/

    /*---------COMPARE---------*/
    if ($('body').hasClass('compare-page')) {

//compare length show-hide busket
        function compareLength() {
            if ($('.compare-block').length > 5) {
                $('.none-if-more').hide();
                $('.compare-if-small').show();
                $('.compare-block, .compare-all-blocks-wrap').addClass('compare-smaller');
            } else {
                $('.none-if-more').show();
                $('.compare-if-small').hide();
                $('.compare-block, .compare-all-blocks-wrap').removeClass('compare-smaller');
            }
        }

        compareLength();

//scroll on px
        $('.compare-all-blocks-wrap').on('scroll', function (e) {
            var compareScroll = e.currentTarget.scrollLeft;
            $('.compare-fixed-over').scrollLeft(compareScroll);
        });

//Scroll compare menu
        var befScroll = 0;
        $(window).scroll(function () {

            if ($('.compare-all-blocks').length) {
                var foot = $('.compare-all-blocks').offset().top;
                var scroll_block = $(window).scrollTop();
                var baner = $('.compare-fixed-wrap, .compare-block-left .compare-fixed');
                var baner_top = $('.compare-all-blocks').offset().top;
                if (scroll_block > baner_top + 0 && scroll_block + baner.height() + 100 < $('.compare-all-blocks').height() + foot) {
                    // baner.css({'position': 'fixed', bottom: '0px'});
                    baner.css({'position': 'fixed', top: '0px'});
                    $('.compare-fixed-over, .compare-block-left .compare-fixed').addClass('fixed-shadow');

                } else if (scroll_block + baner.height() + 100 >= $('.compare-all-blocks').height() + foot) {
                    if (befScroll < scroll_block) {
                        // baner.css({'position': 'absolute', 'top': 'auto', 'bottom': 'auto'});
                        baner.css({'position': 'absolute', 'bottom': 'auto', 'top': 'auto'});
                    }
                }
                else if (scroll_block < baner_top + 0) {
                    $('.compare-all-blocks-wrap').on('scroll', function (e) {
                        var compareScroll = e.currentTarget.scrollLeft;
                        $('.compare-fixed-wrap').scrollLeft(compareScroll);
                    });
                    // baner.css({'position': 'absolute', bottom: '0px'});
                    baner.css({'position': 'absolute', top: '0px'});
                    $('body').find('.compare-features').addClass('m-top');
                    $('.compare-fixed-over, .compare-block-left .compare-fixed').removeClass('fixed-shadow');
                }
            }
            befScroll = scroll_block;
        });


//delete PRODUCT
        $('.basket-delete-icon').click(function () {

            var compareIndex = $(this).parents('.compare-fixed').index();
            $('.compare-block-wrap').find('.compare-block').eq(compareIndex).remove();
            $(this).parents('.compare-fixed').remove();
            compareLength();

        });


//Active button
        $('.compare-btn').click(function () {
            $(this).parents('.compare-all-blocks').find('.hide-without-different').removeClass('hide-without-different');
            $(this).parent().find('.compare-btn').removeClass('compare-btn-active');
            $(this).addClass('compare-btn-active');


//show differences
            if ($('.only-differences').hasClass('compare-btn-active')) {

                var p = $('.compare-block');

                $(p[1]).find('.compare-features-feat').each(function (i) {
                    z = $(this).html();
                    w = true;
                    for (var x = 2; x < p.length; x++) {
                        l = $(p[x]).find('.compare-features-feat').eq(i).html();
                        if (z != l) {
                            w = false
                        }
                    }

                    if (w) {
                        $('.compare-block').each(function () {
                            $(this).find('.compare-features-feat').eq(i).addClass('hide-without-different');
                        })
                    }
                    i++;
                });

                $('.compare-list').each(function () {
                    b = false;
                    $(this).find('.compare-features-feat').each(function () {
                        if (!$(this).hasClass('hide-without-different')) {
                            b = true;
                        }
                    });
                    if (!b) {
                        $(this).addClass('hide-without-different');
                    }
                })
            }

        });
    }


    /*---------end COMPARE---------*/

    function topNewProductIndex(catId, type) {
        var top_product = $('.senn-main.maii.top_product');
        var new_product = $('.senn-main.maii.new_product');
        var act_product = $('.iteem-mainy.act_product');
        if (type == 'top') {
            top_product.find('.senn-slik').html('');
            top_product.find('.senn-slik').removeClass('slick-initialized slick-slider slick-dotted');
            var container = $(".senn-main.maii.top_product .senn-slik");
        } else if (type == 'new') {
            new_product.find('.senn-slik').html('');
            new_product.find('.senn-slik').removeClass('slick-initialized slick-slider slick-dotted');
            var container = $(".senn-main.maii.new_product .senn-slik");
        } else if (type == 'act') {
            // console.log(123);
            act_product.find('.hate').html('');
            act_product.find('.hate').removeClass('slick-initialized slick-slider slick-dotted');
            var container = $(".iteem-mainy.act_product .hate");
        }


        switch (type) {
            case 'top':
                var typeId = 1;
                break;
            case 'new':
                var typeId = 2;
                break;
            case 'act':
                var typeId = 3;
                break;
            default:
                var typeId = 666;
        }
        $.ajax({
            type: 'POST',
            async: false,
            // headers: {
            //     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
            // },
            url: '/index/getnewtopproducts/catid/' + catId + '/type/' + typeId + '/',
            dataType: 'json',
            success: function (data) {


                if ($('.senn-main.maii .senn-slik').hasClass('slick-list')) {
                    $('.senn-slik').unslick()
                }


                for (var i = 0; i < data.items.length; i++) {

                    console.log(data.items.length);


                    if(data.items[i].id_availability == 1) {
                        in_stock = '<h5 class="green">В наличии</h5>'
                    } else if(data.items[i].id_availability == 2) {
                        in_stock = '<h5 class="gray">Наличие уточняйте</h5>'
                    }else if(data.items[i].id_availability == 3) {
                        in_stock = '<h5 class="blue">Под заказ</h5>'
                    }

                    if(data.items[i].bonus_amount > 0) {
                        bonus_amount = '<div class="itee"><img src="/assets/img/izee0.png" alt=""><p>Вернем: <span>'+data.items[i].bonus_amount+' грн</span></p></div>'
                    } else {
                        bonus_amount = ''
                    }

                    if(data.items[i].id_availability == 1) {
                        credit_ = '<div class="itee"><img src="/assets/img/izee1.png" alt=""><p>от<span>1499</span>грн/мес</p></div>'
                    } else {
                        credit_ = ''
                    }

                    if(data.items[i].acttype=='gift') {
                        gift_ = '<div class="itee present"><div class="numeral"><img src="/assets/img/present-img.png" alt="present"></div><p>Подарок!</p><img src="/images/catalog/'+data.items[i].actid+'_s.jpg" alt="'+data.items[i].actname+'"/></div>'
                    } else {
                        gift_ = ''
                    }

                    if(data.items[i].bonus_amount > 0) {
                        bonus_amount_ = '<p>Вернем: <span>' + data.items[i].bonus_amount + ' грн</span></p>'
                    } else {
                        bonus_amount_ = ''
                    }
                    if (type == 'act') {
                        end_date = data.items[i].end_date
                        date_mas = end_date.split('/');
                    }


                    url_name = data.items[i].name;
                    url_name_ = url_name.split(' ').join('-');

                    a = $('<div class="item-senn">\n' +
                        ' <a class="sench" href="'+data.items[i].subdomain+'/'+data.items[i].cat_latin_single+'/'+data.items[i].brand+'-'+url_name_+'">\n' +
                        ' '+ in_stock +'\n'+
                        '       <h4>' + data.items[i].cat_onename + ' ' + data.items[i].brand + ' ' + data.items[i].name + '</h4>\n' +
                        '   <div class="centr">\n' +
                        '       <div class="itee-imgg">\n' +
                        '           <img src="/images/catalog/' + data.items[i].imgid + '.' + data.items[i].imgext + '" alt="варочная поверхность Electrolux EHI 9654 HFK купить" title="варочная поверхность Electrolux EHI 9654 HFK">\n' +
                        '   </div>\n' +
                        ''+bonus_amount+'\n' +
                        ''+credit_+'\n' +
                        '<div class="itee">\n' +
                        '<img src="/assets/img/izee3.png" alt="">\n' +
                        '<p>от<span>619</span>грн/мес</p>\n' +
                        '</div>\n' +
                        ''+gift_+'\n' +
                        '</div>\n' +
                        '</a>\n' +
                        '<object type="lol/wut">\n' +
                        '<span class="otzv">\n' +
                        '<div class="left-otzv">\n' +
                        '<img src="assets/img/patr.png" alt="">\n' +
                        '</div>\n' +
                        '<div class="right-otzv">\n' +
                        '<span>10 отзывов</span>\n' +
                        '</div>\n' +
                        '</span>\n' +
                        '</object>\n' +
                        '<div class="bakk">\n' +
                        '<div class="left-bakk">\n' +
                        '<p>' + data.items[i].id2 + ' грн.</p>\n' +
                        ''+bonus_amount_+'\n' +
                        '</div>\n' +
                        '<div class="right-bakk">\n' +
                        '<object type="lol/wut">\n' +
                        '<a class="open-in-popup add-to-cart bask acty"  data-id="'+data.items[i].id+'" data-name="' + data.items[i].cat_onename + ' ' + data.items[i].brand + ' ' + data.items[i].name + '"  data-img="/images/catalog/80990_s.png" data-price="11999" data-sale="10750" data-bonus="1500"   data-gift-id="" data-gift-name="Чайник ELECTROLUX Electro чайник" data-gift-img="/images/catalog/93266_s.jpg">\n' +
                        '<span>В корзину</span>\n' +
                        '</a>\n' +
                        '</object>\n' +
                        '</div>\n' +
                        '</div>\n' +
                        '<div class="hovv">\n' +
                        '<div class="news">\n' +
                        '<div class="left-butt">\n' +
                        '<span>В избранное</span>\n' +
                        '</div>\n' +
                        '<div class="right-butt" data-id="'+data.items[i].id+'">\n' +
                        '<span>Сравнение</span>\n' +
                        '</div>\n' +
                        '</div>\n' +
                        '</div>\n' +
                        '</div>')
                    if (type == 'act') {
                        b = $('<div class="ityy">\n' +
                            '<div class="hovyy"></div>\n' +
                            '<a href="http://fresh.590.ua/vt/hob/electrolux-ehi-9654-hfk">\n' +
                            '<div class="left-iteem">\n' +
                            ' <div class="itee-imgg">\n' +
                            '<img src="/images/catalog/80990_s.png"  alt="варочная поверхность Electrolux EHI 9654 HFK купить" title="варочная поверхность Electrolux EHI 9654 HFK"> \n' +
                            '</div> \n' +
                            ''+bonus_amount+'\n' +
                            ''+credit_+'\n' +
                            '<div class="itee">  \n' +
                            '<img src="/assets/img/izee3.png" alt="">  \n' +
                            '<p>от<span>619</span> грн/мес</p> \n' +
                            '</div> \n' +
                            '<div class="itee"> \n' +
                            '<img src="/assets/img/izee4.png" alt=""> \n' +
                            ' <p>Лучшая <span>цена</span></p> \n' +
                            '</div> \n' +
                            '<div class="itee present"> \n' +
                            ' <div class="numeral"><img src="/assets/img/present-img.png" alt="present"> \n' +
                            ' </div> \n' +
                            '<p>Подарок!</p> \n' +
                            '<img src="/images/catalog/93266_s.jpg" alt="gift"/> \n' +
                            '</div> \n' +
                            '<div class="itee change"> \n' +
                            '<img src="/assets/img/izee5.png" alt=""> \n' +
                            '<p>Замена</p> \n' +
                            '</div> \n' +
                            ' </div> \n' +
                            ' </a> \n' +
                            ' <div class="right-iteem"> \n' +
                            ' <div class="name-iteem"> \n' +
                            ' <h5 class="green">В наличии</h5> \n' +
                            '<h4>' + data.items[i].cat_onename + ' ' + data.items[i].brand + ' ' + data.items[i].name + '</h4>\n' +
                            '<object type="lol/wut"> \n' +
                            '<a href="#" class="otzv"> \n' +
                            '<div class="left-otzv"> \n' +
                            '<img src="/assets/img/patr.png" alt=""> \n' +
                            '</div> \n' +
                            '<div class="right-otzv"> \n' +
                            '<span>10 отзывов</span> \n' +
                            '</div> \n' +
                            ' </a> \n' +
                            ' </object> \n' +
                            '<div class="cash"> 11999 грн.</div> \n' +
                            '<div class="times"> \n' +
                            '<div class="timer" data-year="'+date_mas[2]+'" data-month="'+date_mas[1]+'" data-days="'+date_mas[0]+'"></div> \n' +
                            '<div class="right-times"> \n' +
                            '<object type="lol/wut"> \n' +
                            '<a class="open-in-popup add-to-cart bask acty" data-id="'+data.items[i].id+'" data-name="' + data.items[i].cat_onename + ' ' + data.items[i].brand + ' ' + data.items[i].name + '" data-img="/images/catalog/80990_s.png" data-price="11999" data-sale="10750" data-bonus="1500" data-gift-id="" data-gift-name="Чайник ELECTROLUX Electro чайник" data-gift-img="/images/catalog/93266_s.jpg">  \n' +
                            ' <span>В корзину</span> \n' +
                            ' </a> \n' +
                            ' </object> \n' +
                            ' </div> \n' +
                            ' </div> \n' +
                            ' </div> \n' +
                            ' <div class="news"> \n' +
                            ' <div class="left-butt"> \n' +
                            '<object type="lol/wut"> \n' +
                            '<span>В избранное</span> \n' +
                            ' </object> \n' +
                            '</div> \n' +
                            '<div class="right-butt" data-id="'+data.items[i].id+'"> \n' +
                            '<object type="lol/wut"> \n' +
                            '<span>Сравнение</span> \n' +
                            '</object> \n' +
                            '</div> \n' +
                            '</div> \n' +
                            '</div> \n' +
                            '</div>')
                    }


                    if (type == 'top') {
                        a.appendTo('.senn-main.maii.top_product .senn-slik ');
                    } else if (type == 'new') {
                        a.appendTo('.senn-main.maii.new_product .senn-slik ');
                    } else if (type == 'act') {
                        b.appendTo(act_product.find('.hate'))
                    }

                }


            }
        });

        if (type == 'top' || type == 'new'){
            var allElements = Array.from(container.find(".item-senn"));
            for (var p = 0; p < allElements.length; p += 7) {
                var wrap = document.createElement("div");
                wrap.classList.add("maii-item");
                for (var j = 0; j < 7; j++) {
                    if (p + j < allElements.length) {
                        wrap.append(allElements[p + j]);
                    }
                }
                container.append(wrap);
            }

            container.slick({
                arrows: false,
                dots: true,
                infinite: true,
                speed: 500,
                cssEase: 'linear',
                autoplay: true,
                autoplaySpeed: 5000,
                responsive: [
                    {
                        breakpoint: 1025,
                        settings: {
                            dots: false,
                            arrows: true
                        }
                    }]
            });
        } else if (type == 'act'){
            var allElements = Array.from(container.find(".ityy"));
            for (var p = 0; p < allElements.length; p += 2) {
                var wrap = document.createElement("div");
                wrap.classList.add("hate-item");
                for (var j = 0; j < 2; j++) {
                    if (p + j < allElements.length) {
                        wrap.append(allElements[p + j]);
                    }
                }
                container.append(wrap);
            }
            container.slick({
                slidesToShow: 2,
                slidesToScroll: 1,
                responsive: [
                    {
                        breakpoint: 1025,
                        settings: {
                            slidesToShow: 1,
                            arrows: true,
                            dots: false
                        }
                    }],
                dots: true,
                arrows: false,
                infinite: true,
                fade: false,
                cssEase: 'linear',
                autoplay: true,
                autoplaySpeed: 5000
            });

            CDT();
        }
        // $.getScript("/assets/js/order.js");
        $('.item-senn').hover(
            function () {
                $(this).addClass('runn')
            },
            function () {
                $(this).removeClass('runn');
            });
        $('.right-butt').bind('click', addItemToCompare);
        // $('.add-to-cart').bind('click', doObject());
        add_to_cart()
    }
    topNewProductIndex(catId, type)
});





