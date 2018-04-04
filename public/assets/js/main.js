jQuery(document).ready(function () {

    $('.parag-next .parag-item').click(function () {
        $('.parag-next .parag-item').removeClass('active');

        $(this).addClass('active');
    });


    $('.parag-prev .parag-item').click(function () {
        $('.parag-prev .parag-item').removeClass('active');
        $(this).addClass('active');
    });

    $('.parag-home .parag-item').click(function () {
        $('.parag-home .parag-item').removeClass('active');
        $(this).addClass('active');
    });


    $('.parag-next .parag-item').each(function () {
        // var i = $(this).innerWidth();
        var i = $(this).width() + 40;

        $(this).css({
            'width': i
        });
    });


    $('.parag-prev .parag-item').each(function () {
        var y = $(this).width() + 40;


        $(this).css({
            'width': y
        });
    });


    $('.parag-home .parag-item').each(function () {
        var a = $(this).width() + 40;

        $(this).css({
            'width': a
        });
    });


    $('.item-senn').hover(
        function () {

            $(this).addClass('runn')
        },
        function () {
            $(this).removeClass('runn');
        });


    $('.khob').click(function () {
        var x = $(this);

        x.addClass('snob');
        setTimeout(function () {
            x.find('a')[0].click();
        }, 150);

    });


    //--------------Вопросы / Ответы-------------


    !function (i) {
        var o, n;
        i(".title_block").on("click", function () {
            o = i(this).parents(".accordion_item"), n = o.find(".info-accord"),
                o.hasClass("active_block") ? (o.removeClass("active_block"),
                    n.slideUp()) : (o.addClass("active_block"), n.stop(!0, !0).slideDown(),
                    o.siblings(".active_block").removeClass("active_block").children(
                        ".info-accord").stop(!0, !0).slideUp())
            $('.article').readmore({
                maxHeight: 78,
                speed: 275,
                moreLink: '<a class="moreLink" href="#">Еще</a>',
                lessLink: '<a class="moreLink" href="#">Скрыть</a>'
            });
        })
    }(jQuery);


    //-------

    if ($(".modalbox").length) {
        $(".modalbox").fancybox();
    }


    $('.modalbox').click(function () {
        $("html, body").css('overflow', 'hidden')
    });


    $("#form-feedback").submit(function () {
    });

    $(".button").on("click", function () {
    });

    $(".close").click(function () {
        $("#popup").fadeOut(600);
        $("html, body").css('overflow', 'visible')
    });


    // -------preloader
    $(window).on('load', function () {
        $('.preloader').fadeOut();
    });
    //--------


    if ($('.watched-small').length) {
        $('.watched-small').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            dots: true,
            arrows: false,
            infinite: true,
            cssEase: 'linear',
            autoplay: true,
            autoplaySpeed: 5000
        });
    } else {
    }

    if ($('.hate').length) {
        $('.hate').slick({
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
    } else {
    }

    if ($('.interest-slide').length) {
        $('.interest-slide').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            arrows: false,
            dots: true,
            responsive: [
                {
                    breakpoint: 1025,
                    settings: {
                        arrows: true,
                        dots: false,
                        slidesToShow: 2
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        arrows: true,
                        dots: false,
                        slidesToShow: 1

                    }
                }],
            speed: 500,
            cssEase: 'linear',
        });
    } else {
    }

    if ($('.watched-slider').length) {
    $('.watched-slider').slick({
        slidesToShow: 5,
        responsive: [
            {
                breakpoint: 1025,
                settings: {
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 781,
                settings: {
                    slidesToShow: 1
                }
            }],
        slidesToScroll: 1,
        dots: true,
        arrows: false,
        infinite: true,
        cssEase: 'linear',
        // autoplay: true,
        autoplaySpeed: 5000
    });
    } else {
    }

    if ($(".slick").length) {
        $(".slick").slick({
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
    } else {
    }

    if ($('.owl-slide').length) {
        $('.owl-slide').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            arrows: false,
            dots: true,
            responsive: [
                {
                    breakpoint: 1025,
                    settings: {
                        arrows: true,
                        dots: false,
                        slidesToShow: 2
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        arrows: true,
                        dots: false,
                        slidesToShow: 1

                    }
                }],
            speed: 500,
            cssEase: 'linear',
        });
    } else {
    }

    if (window.matchMedia("(max-width: 1025px)").matches) {
        $('.parag').slick({
            slidesToShow: 4,
            responsive: [
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2,

                    }
                }],
            slidesToScroll: 1,
            arrows: true,
            dots: false,
            speed: 500,
            cssEase: 'linear',
        });

        $('.slick-ipad').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: true,
            dots: false,
            speed: 500,
            cssEase: 'linear',
        });

        $('article').readmore({
            maxHeight: 70,
            speed: 275,
            moreLink: '<a class="moreLink" href="#">Еще</a>',
            lessLink: '<a class="moreLink" href="#">Скрыть</a>'
        });

        /*IPAD MENU*/
        $(".iteem:nth-child(1)").on("click", function () {
            $(this).toggleClass('mobile-menu');
            if ($('.item-base').hasClass('base-menu')) {
                $('html, body').css('overflow', 'hidden');

            } else {
                $('html, body').css('overflow', 'auto');
            }
        });


    }

    if (window.matchMedia("(max-width: 767px)").matches) {

        /*MOBILE MENU*/
        $('.burgerBtn').click(function () {
            $('.iteem-menu').toggleClass('mobile-menu-all');
            if ($('.iteem-menu').hasClass('mobile-menu-all')) {
                $('html, body').css('overflow', 'hidden');
            } else {
                $('html, body').css('overflow', 'auto');
            }
        });
    }


    $(window).scroll(function () {  //Scroll up-filter
        if ($('.base-options').length) {
            var foot = $('.fashion').offset().top;
            var scroll_block = $(window).scrollTop();
            var baner = $('.up-filter div');
            var baner_top = $('.up-filter').offset().top;
            // console.log(foot , scroll_block);
            if (scroll_block + 100 > baner_top && scroll_block + baner.height() - 100 < foot - 20 && scroll_block + 100 + baner.height() < foot - 20) {
                baner.css({"position": 'fixed', top: '100px'});
            } else if (scroll_block + 100 + baner.height() > foot - 20) {
                $('.up-filter div').css({'position': 'absolute', 'bottom': '20px', 'top': 'auto'});
                if (befScroll < scroll_block) {

                }
            }
            else if (scroll_block + 100 < baner_top) {
                baner.css({'position': 'relative', top: '0'});
            }
        }
        befScroll = scroll_block

    });


    $('.up-filter').click(function () {
        $('body, html').animate({scrollTop: 0}, 800);
        return false;
    });

    window.requestAnimFrame = (function () {
        return window.requestAnimationFrame ||
            window.webkitRequestAnimationFrame ||
            window.mozRequestAnimationFrame ||
            window.oRequestAnimationFrame ||
            window.msRequestAnimationFrame ||
            function (/* function */ callback, /* DOMElement */ element) {
                window.setTimeout(callback, 1000 / 60);
            };
    })();


    function step() {
        requestAnimationFrame(step);
        //     $('.slick-active').addClass('live');
        //     $('.slick-dots li button').click(function(){
        //         $(this).parent().addClass('lave');setTimeout(function(){$('.live').removeClass('live');}, 250);
        //        setTimeout(function(){$('.slick-active').removeClass('lave');},550);   
        //     });

        //var countLi = $('.slick-dots li').length;
        // console.log(countLi);
        $('.slick-active').prevUntil().addClass('jump').removeClass('jimm');

        $('.slick-active').nextUntil().addClass('jimm').removeClass('jump');

        $('.slick-dots li button').click(function () {
            var z = $(this);
            setTimeout(function () {
                $(this).removeClass('jump jimm');
            }, 350);

        });
    }


    step();


    $('.morr').on("click", function () {
        $(this).parents('.item-senn').find('.front').toggleClass('see-more')
    });


    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.doww').fadeIn();
        } else {
            $('.doww').fadeOut();
        }
    });

    $('.doww').click(function () {
        $('body,html').animate({scrollTop: 0}, 800);
        return false;
    });


    if ($('.numb').length) {
        $('.numb').inputmask({
            mask: "+380 (99) 999-99-99"
        });
    }


    (function ($) {
        $.fn.selectyboxi = function () {

            var selectDefaultHeight = $('#selectyBoxi').height();
            var rotateDefault = "rotate(0deg)";
            var h = $('#selectyMenuBoxi').height() + 25;
            $('#selectyBoxi > p.valueTags').click(function () {

                var currentHeight = $('#selectyBoxi').height();

                if (currentHeight < 50 || currentHeight == selectDefaultHeight) {
                    $('#selectyBoxi').height(h);
                    $('div#selectyBoxi p.valueTags').addClass('rofl');
                }

                if (currentHeight >= 50) {
                    $('#selectyBoxi').height(selectDefaultHeight);
                    $('div#selectyBoxi p.valueTags').removeClass('rofl');
                }
            });

            $('li.options').click(function () {
                $('#selectyBoxi').height(selectDefaultHeight);
                $('div#selectyBoxi p.valueTags').removeClass('rofl');
                $('p.valueTags').text($(this).text());
            });
        };
    })(jQuery);

    $('selector').selectyboxi();


    $('.morr').click(function () {
        $(this).toggleClass('opened').toggleClass('closed').next().slideToggle('normal');
        if ($(this).hasClass('opened')) {
            $(this).html('Скрыть -');
        }
        else {
            $(this).html('Больше +');
        }
    });


});

//--------Price----
$(function () {
    var $slider = $("#slider-range");
    var $slider_ = $(".price-filters #price-filter-max");
    var $slider__ = $(".price-filters #price-filter-min");
    var priceMin_ = $slider__.attr("placeholder");
    var priceMax_ = $slider_.attr("placeholder");
    var priceMin = $slider.attr("data-price-min"),
        priceMax = $slider.attr("data-price-max");

    $("#price-filter-min, #price-filter-max").map(function () {
        $(this).attr({
            "min": priceMin,
            "max": priceMax
        });
    });

    $("#price-filter-min").attr({
        "placeholder": "min " + priceMin_,
        "value": priceMin_
    });

    $("#price-filter-max").attr({
        "placeholder": "max " + priceMax_,
        "value": priceMax_
    });
    if ($slider.length) {
        $slider.slider({
            range: true,
            min: Math.max(priceMin, 0),
            max: priceMax,
            values: [priceMin_, priceMax_],
            slide: function (event, ui) {
                $("#price-filter-min").val(ui.values[0]);
                $("#price-filter-max").val(ui.values[1]);
            }
        });
    }


    $("#price-filter-min, #price-filter-max").map(function () {
        $(this).on("change", function () {
            updateSlider();
        });
    });

    function updateSlider() {
        $slider.slider("values", [$("#price-filter-min").val(), $("#price-filter-max").val()]);
    }

});


$(function () {
    var g_list = $('.view-tile-list .pos-fix i.x4x4');
    var v_list = $('.view-tile-list .pos-fix i.x3x3');

    g_list.click(function () {
        $('.katalog .product-katalog .articles-horizontal').removeClass('item_4 item_3');
        $('.katalog .product-katalog .articles-horizontal').addClass('item_4');
    })
    v_list.click(function () {
        $('.katalog .product-katalog .articles-horizontal').removeClass('item_4 item_3');
        $('.katalog .product-katalog .articles-horizontal').addClass('item_3');
    })

})


$(function () {
    var g_list = $('.view-tile-list .pos-fix i.x4x4');
    var v_list = $('.view-tile-list .pos-fix i.x3x3');

    g_list.click(function () {
        $('.katalog .product-katalog .articles-horizontal').removeClass('item_4 item_3');
        $('.katalog .product-katalog .articles-horizontal').addClass('item_4');
    })
    v_list.click(function () {
        $('.katalog .product-katalog .articles-horizontal').removeClass('item_4 item_3');
        $('.katalog .product-katalog .articles-horizontal').addClass('item_3');
    })


    jQuery(function ($) {
        $(document).mouseup(function (e) {
            var div = $(".linsa");
            if (!div.is(e.target) &&
                div.has(e.target).length === 0) {
                $('#selectyBoxi').css({'height': '25px'});
                $('div#selectyBoxi p.valueTags').removeClass('rofl');
            }
        });
    });


    $('.share-item').each(function () {
        var v = $(this).width() + 39;

        $(this).css({
            'width': v
        });
    });


    $('.share-item').each(function () {
        var v = $(this).width() + 39;
        $(this).css({
            'width': v
        });
    });


    $('.share-item').click(function () {

        $('.share-item').removeClass('active');
        $(this).addClass('active');
    });


    $('.forms').each(function () {
        var t = $(this);

        var m = t.height();
        t.attr('data-heig', m);
        if (m >= 170) {
            t.parent().parent().parent().addClass('foxx');
        } else {
        }
    });

    $('.brand').each(function () {
//      var t = $(this);
//      var l = t.find('.legg').height();
//      var o = t.find('.forms').height() - 70;
//      var hater = l + o + 140;
//      t.attr('data-heig', hater);t.find('.forms').css({'top':-o});    
//                      
//      t.find('.forms').attr('data-hizz', o);


        $(this).attr('data-full', $(this).height() + 70).attr('data-short', $(this).find('.legg').height()).height($(this).find('.legg').height());

    });


    var cross = '4';


    $('.brand').click(function () {
        var full = $(this).attr('data-full');
        var short = $(this).attr('data-short');

        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
            $(this).height(short);
        }
        else if ($(this).hasClass('foxx')) {
            $(this).addClass('active');

            //var a = $(this).find('.forms').attr('data-heig');
            $(this).height('290px');
            $(this).find('.forms').height('150px');
            $(this).find('.under-forms').height('170px');
//            $(this).find('.opti').prepend($('<div class="clik">Показать все</div>'));
        }
        else {
            $(this).addClass('active');
            $(this).height(full);
        }

    });


    window.requestAnimFrame = (function () {
        return window.requestAnimationFrame ||
            window.webkitRequestAnimationFrame ||
            window.mozRequestAnimationFrame ||
            window.oRequestAnimationFrame ||
            window.msRequestAnimationFrame ||

            function (/* function */ callback, /* DOMElement */ element) {
                window.setTimeout(callback, 1000 / 60);
            };
    })();

    function step() {
        requestAnimationFrame(step);


    }

    step();


});


function CountdownTimer(elm, tl, mes) {
    this.initialize.apply(this, arguments);
}

CountdownTimer.prototype = {
    initialize: function (el, tl, mes) {
        this.elem = el
        this.tl = tl;
        this.mes = mes;

    },
    countDown: function () {
        var timer = '';
        var today = new Date();
        var day = Math.floor((this.tl - today) / (24 * 60 * 60 * 1000));
        var hour = Math.floor(((this.tl - today) % (24 * 60 * 60 * 1000)) / (60 * 60 * 1000));
        var min = Math.floor(((this.tl - today) % (24 * 60 * 60 * 1000)) / (60 * 1000)) % 60;
        var sec = Math.floor(((this.tl - today) % (24 * 60 * 60 * 1000)) / 1000) % 60 % 60;
        var me = this;

        if ((this.tl - today) > 0) {
            timer += '<div class="timm"><div class="circ">' + day + '</div><p>дней</p></div>';
            timer += '<div class="timm"><div class="circ">' + hour + '</div><p>часов</p></div>';
            timer += '<div class="timm"><div class="circ">' + this.addZero(min) + '</div><p>минут</p></div>   <div class="timm"><div class="circ">' + this.addZero(sec) + '</div><p>секунд</p></div>';
            this.elem.innerHTML = timer;

            tid = setTimeout(function () {
                me.countDown();
            }, 10);
        } else {
            this.elem.innerHTML = this.mes;
            return;
        }
    },
    addZero: function (num) {
        return ('0' + num).slice(-2);
    }
}

function CDT() {
    var p = [];
    timerAll = document.querySelectorAll('.timer');

    for (i = 0; i < timerAll.length; i++) {
        var s = timerAll[i];
        var year = s.getAttribute('data-year');
        var month = s.getAttribute('data-month');
        var days = s.getAttribute('data-days');


        var tl = new Date(year + '/' + month + '/' + days + ' 00:00:00');
        p[i] = new CountdownTimer(timerAll[i], tl, '<span class="number-wrapper"><div class="line"></div><span class="number end">Акция завершена</span></span>');
        p[i].countDown();
    }

}

window.onload = function () {
    CDT();
}

// jQuery(document).ready(function () {
//     if ($('.slick').length) {
//         $('.slick').slick({
//             arrows: false,
//             dots: true,
//             infinite: true,
//             speed: 500,
//             cssEase: 'linear',
//             autoplay: true,
//             autoplaySpeed: 5000,
//             responsive: [
//                 {
//                     breakpoint: 1025,
//                     settings: {
//                         dots: false,
//                         arrows: true
//                     }
//                 }]
//         });
//     } else {}
// })







