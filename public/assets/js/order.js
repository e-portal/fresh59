$(document).ready(function () {

    /*click on cart-button*/
    $('.add-to-cart').bind('click', doObject);


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
            console.log(obj);
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
                '                            <div class="prod-price-total" data-value="' + ((obj[prod_data].price > obj[prod_data].sale ? obj[prod_data].sale : obj[prod_data].price) * obj[prod_data].quantity) + '">' + ((obj[prod_data].price > obj[prod_data].sale ? obj[prod_data].sale : obj[prod_data].price) * obj[prod_data].quantity) + '</div>\n' +
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

        /*stop scroll*/
        if (window.matchMedia('(max-width: 900px)').matches) {
            $('html, body').css('overflow', 'hidden');
        } else {
            $('html, body').css('overflow', 'hidden');
        }







        /*show popup*/
        $('body').find('.popup').css('display', 'flex');
        $('.popup-content').addClass('show');
        $('.close').addClass('show');
        $('header .baskets .numeral').text(i);
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
    });

    /*---------autorisation---------*/
    $('.pipl').click(function () {
        $('.autorisation').css('display', 'flex');
        /*stop scroll*/
        if (window.matchMedia('(max-width: 900px)').matches) {
            $('html, body').css('overflow', 'hidden');
        } else {
            $('html, body').css('overflow', 'hidden');
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
        bindings();
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
        // bindings();
        console.log(i);
        $('header .baskets .numeral').text(i)
    }


    /*---------delete PRODUCT---------*/
    function delProd() {
        idObj = $(this).parents('.basket-section-prod').find('.prod-code span').html();
        delete basket[idObj];
        $(this).parents('.basket-section').remove();
        totalCart();
        // doObject();
        window.localStorage.setItem('basket', JSON.stringify(basket));
        basket != null ? doBasket(basket) : ''
        // bindings();
        console.log(i);
        $('header .baskets .numeral').text(i)
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


    }


    /*---------end Count price---------*/


    /*---------Count total price---------*/
    var totalPrice = 0;


    function totalCart() {
        totalPrice = 0;
        $('.prod-price-total').each(function () {
            totalPrice = parseInt($(this).html());
        });

        $('.count-total').html(totalPrice);
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


});





