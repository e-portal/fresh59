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
        var i = $(this).innerWidth();
        $(this).css({
            'width': i
        });
    });


    $('.parag-prev .parag-item').each(function () {
        var y = $(this).width() + 39;

        $(this).css({
            'width': y
        });
    });


    $('.parag-home .parag-item').each(function () {
        var a = $(this).width();

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


    if ($('.slick').length) {
        $('.slick').slick({
            dots: true,
            infinite: true,
            speed: 500,
            fade: true,
            cssEase: 'linear',
            autoplay: true,
            autoplaySpeed: 5000,
        });
    } else {
    }


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


    if ($('.senn-scrol').length) {


        $(window).scroll(function () {
            var scrol = $(window).scrollTop();
            var offs = $('.senn-scrol').offset().top;
            var j = $(window).height();


            if (scrol >= offs - j) {

                $('.doww').css({
                    'opacity': '1',
                    'visibility': 'visible'
                });
            } else {
                $('.doww').css({
                    'opacity': '0',
                    'visibility': 'hidden'
                });
            }

        });

    }


    $(".doww").click(function () {
        $('body,html').animate({

            scrollTop: $('.headers').offset().top
        }, 799)
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


    //--------------Вопросы / Ответы-------------


    !function (i) {
        var o, n;
        i(".title_block").on("click", function () {
            o = i(this).parents(".accordion_item"), n = o.find(".info-accord"),
                o.hasClass("active_block") ? (o.removeClass("active_block"),
                    n.slideUp()) : (o.addClass("active_block"), n.stop(!0, !0).slideDown(),
                    o.siblings(".active_block").removeClass("active_block").children(
                        ".info-accord").stop(!0, !0).slideUp())
        })
    }(jQuery);

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


    if ($("#phone").length) {
        $('#phone').mask('+3 8(000) 000-00-00');
    }


    $('.watched-slider').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        dots: true,
        arrows: false,
        infinite: true,
        // speed: 500,
        // fade: true,
        cssEase: 'linear',
        autoplay: true,
        autoplaySpeed: 5000,
    });

    $('.senn-main').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        dots: true,
        arrows: false,
        infinite: true,
        // speed: 500,
        // fade: true,
        cssEase: 'linear',
        autoplay: true,
        autoplaySpeed: 5000,
    });


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
        console.log(m);
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
        //$(this).hasClass('active') ? ($(this).removeClass('active'), $(this).height(short) ): ($(this).addClass('active'), $(this).height(full) )

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
        p[i] = new CountdownTimer(timerAll[i], tl, '<span class="number-wrapper"><div class="line"></div><span class="number end">Time is up!</span></span>');
        p[i].countDown();
    }

}

window.onload = function () {
    CDT();
}














