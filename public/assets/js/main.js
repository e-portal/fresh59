// -------preloader
$(window).on('load', function () {
    $('html, body').css('position', 'fixed');
    // $('.preloader').fadeOut();
    if ($('.preloader').fadeOut()) {
        $('html, body').removeAttr('style');
    }


});


//--------
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

    $('.title_block').click(function () {
        if ($(this).parents('.accordion_item').hasClass('open')) {
            $('.accordion_item').removeClass('open');
            return true
        }
        $('.accordion_item').removeClass('open');

        $(this).parents('.accordion_item').toggleClass('open');

    });

    //
    // $('.title_block').click(function () {
    //     if ($(this).parents('.accordion_item').hasClass('active')) {
    //         $('.accordion_item').removeClass('active');
    //         $('.accordion_item').removeClass('open');
    //         return true
    //     }
    //     $('.accordion_item').removeClass('active');
    //     $('.accordion_item').removeClass('open');
    //
    //     $(this).parents('.accordion_item').addClass('active');
    //
    // });
    // $('.acc-open').click(function () {
    //     $(this).parents('.accordion_item').toggleClass('open');
    //
    // });

    //-------

    // if ($(".modalbox").length) {
    //     $(".modalbox").fancybox();
    // }
    // ;


    $('.modalbox').click(function () {
        $('.popup-question').css('display', 'block')
        $("html, body").css('overflow', 'hidden')
    });


    $("#form-feedback").submit(function () {
    });

    $(".button").on("click", function () {
    });

    $(".close, .close-question").click(function () {
        $(this).parents('.popup-question').css('display', 'none');
        $("html, body").css('overflow', 'visible')
    });

    $('.filter-open').click(function () {
        $('.left-options').addClass('open-left');
        $('.background-filter-active').addClass('open-left');
        $("html, body").css('overflow', 'hidden')
    });

    $('.close-filter').click(function () {
        $('.left-options').removeClass('open-left');
        $('.background-filter-active').removeClass('open-left');
        $("html, body").css('overflow', 'visible')
    });

    $('.faux-select').click(function () {
        $(this).toggleClass('open');
        $('.options', this).toggleClass('open');
    });

    // $('.options li').click(function(){
    //     var selection = $(this).text();
    //     var dataValue = $(this).attr('data-value');
    //     $('.selected-option span').text(selection);
    //     $('.faux-select').attr('data-selected-value',dataValue);
    // });


    if ($('.watched-small').length) {
        $('.watched-small').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            dots: true,
            arrows: false,
            infinite: true,
            cssEase: 'linear',
            autoplay: true,
            autoplaySpeed: 5000,
            responsive: [
                {
                    breakpoint: 1281,
                    settings: {
                        slidesToShow: 3
                    }
                },
                {
                    breakpoint: 1025,
                    settings: {
                        slidesToShow: 2,
                        arrows: true,
                        dots: false
                    }
                },
                {
                    breakpoint: 767,
                    settings: {
                        slidesToShow: 1
                    }
                }]
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

    if ($('.watched-slider').length) {
        $('.watched-slider').slick({
            slidesToShow: 5,
            responsive: [
                {
                    breakpoint: 1281,
                    settings: {
                        slidesToShow: 4
                    }
                },
                {
                    breakpoint: 1025,
                    settings: {
                        slidesToShow: 3
                    }
                },
                {
                    breakpoint: 781,
                    settings: {
                        slidesToShow: 2
                    }
                },
                {
                    breakpoint: 767,
                    settings: {
                        slidesToShow: 1
                    }
                }],
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

    if ($('.interest-slide').length && window.matchMedia("(min-width: 1025px)").matches) {
        $('.interest-slide').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            arrows: false,
            dots: true,
            speed: 500,
            cssEase: 'linear',
            responsive: [
                {
                    breakpoint: 1281,
                    settings: {
                        slidesToShow: 2
                    }
                }]
        });
    }

    if ($('.owl-slide').length && window.matchMedia("(min-width: 1025px)").matches) {
        $('.owl-slide').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            arrows: false,
            dots: true,
            speed: 500,
            cssEase: 'linear',
        });


    }

    if (window.matchMedia("(max-width: 1025px)").matches) {
        if ($(".parag").length) {
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
        }

        if ($(".slick-ipad").length) {
            $('.slick-ipad').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: true,
                dots: false,
                speed: 500,
                cssEase: 'linear',
            });
        }


        /*IPAD MENU*/
        $(".burger").bind("click", function () {
            $(this).toggleClass('active');
            $('.mobile-display-none .base-menu').toggleClass('mobile-menu-all');
            if ($('.burger').hasClass('active')) {
                $('html, body').css('overflow', 'hidden');

            } else {
                $('html, body').css('overflow', 'auto');
            }
        });

    }
    $('.base-menu li .menu-one').bind('click', function (e) {
        e.preventDefault()
        if ($(this).hasClass('menu-0')) {
        } else {
            if ($(this).parent().hasClass('active')) {
                $('.menu-0').slideUp(500)
                $(this).parent().toggleClass('active');
                return
            }
            $(this).parent().siblings().removeClass('active');
            $('.menu-0').slideUp(500);
            $(this).parent().addClass('active');
            $(this).parent().hasClass('active') ? $(this).parent().find('.menu-0').slideDown(500) : $('.base-menu').removeClass('active');
        }
    });




    // $('header .header-bottom__input ').focus(function () {
    //     $('.search-list').addClass('action');
    // });
    //
    // $('.iteem:nth-child(2) .inpp').click(function (e) {
    //     $(this).addClass('action');
    //     // s($('.header'), $('.header-search'), 'search-open', e, function () {
    //     //     $('.header-search').removeClass('action');
    //     //     $('.header').removeClass('link-hover');
    //     //     $('.header-bottom__input').val('');
    //     // });
    // });

    $(document).ready(function () {
        $('.iteem:nth-child(2) .inpp').click(function (e) {
            $('header .header-bottom__input').focus();
            s($('.headers'), $('.iteem:nth-child(2) .inpp'), 'search-open', e, function () {
                $('.iteem:nth-child(2) .inpp').removeClass('action');
                $('.headers').removeClass('link-hover');
                $('.header-bottom__input').val('');
            });
        });

        if ($(window).width() > 991) {
            $('.header-bottom__item').hover(function () {
                $('.headers').addClass('link-hover');
            }, function () {
                $('.headers').removeClass('link-hover')
            })
        }




        $('body').on('input', 'header .header-bottom__input', function () {
            if ($(".headers").hasClass('search-open')) {
                $('.iteem:nth-child(2) .inpp').addClass('action');
                $('.headers').addClass('link-hover')
            }

        });
    });

    function s(obj, obj2, className, e, clbck) {
        if (!$(e.target).hasClass('header-bottom__exit')) {
            // e.preventDefault();
            e.stopPropagation();
        }

        if (!obj.hasClass(className)) {
            $('body').on('click', clbck2);
            obj.addClass(className);
        }

        function clbck2(e) {
            var target = $(e.target);

            if (!target.closest(obj2).length || (target.hasClass('header-bottom__exit'))) {
                obj.removeClass(className);
                $('body').off('click', clbck2);
                clbck();
            }
        }
    }

    /********************************************************/
    (function ($) {
        $('.header-bottom__input').bind('keyup', function () {
            var options = {
                url: '/catalog/autocomplete',
                minLength: 2,
                modal: ".search-list__item_",
                modal_error_class: ".search_ren",
                noimageSrc: 'noimage.jpg'
            };

            options.searchPhrase = $(this).val();


            console.log(342433);
            var modal = $(options.modal);
            var modal_ = $(options.modal_error_class);
            if (modal.hasClass(options.modal_error_class)) {
                modal.removeClass(options.modal_error_class);
            }
            var val = $(this).val();
            options.searchPhrase = val;
            var limit = Math.floor(($(window).height() - 160) / 100) - 1;
            if(val && val.length > options.minLength) {
                $.getJSON(options.url, {q: $(this).val(), l: limit}, function (data) {

                    modal.html('');
                    if (data.length > 0) {
                        console.log(data);
                        modal_.html('');
                        var html = '<div class="123">';
                        $(data).each(function () {
                            var i = $(this)[0];

                            if (i.imgid != null) {
                                var imgSrc = 'catalog/' + i.imgid + '_s.' + i.imgext + '';
                            }
                            else {
                                var imgSrc = options.noimageSrc;
                            }
                            console.log(data);
                            html += '<div class="search-list__item search-result">\
                            <a href="http://fresh.590.ua/catalog/item/' + i.id + '"> \
                        <div class="search-result__inner"> \
                            <div class="search-result__img"><img src="/images/' + imgSrc + '" alt="" /></div>  \
                                <div class="search-result__content">\
                                    <div class="search-result__content-top">\
                                        <h5 class="search-result__name">' + i.category + ' ' + i.brand + ' ' + i.name + '</h5>\
                                    </div>\
                                    <p class="search-result__coast">2500 грн</p> \
                                </div>\
                            </div>\
                        </a> </div> \
                        ';


                        });
                        html += '</div>'
                        var html_ = '<button class="header-search__button">';
                        html_ += '<a href="/catalog/search/' + options.searchPhrase + '">Показать все результаты поиска &rarr;</a> \
                                </button>';
                        modal.append(html)
                        modal_.append(html_)
                        modal.show();

                        $('.searc').click(function () {
                            location.href ="/catalog/search/" + options.searchPhrase + "";
                        })
                        $('.header-bottom__input').keypress(function (e) {
                            if(e.which == 13) {
                                e.preventDefault()
                                location.href ="/catalog/search/" + options.searchPhrase + "";
                            }
                        })


                    }
                    else {
                        modal_.html('');
                        var html_ = '<div class="compare-itm">';
                        html_ += 'По Вашему запросу ничего не найдено. \
                               </div>';
                        modal_.append(html_)

                        // methods.noResults();
                    }
                });

            }

        })

        // $('.header-search__button a').on('click',function () {
        //     $('.header-search__button').trigger('click');
        //
        // })
    })(jQuery);

    // (function ($) {
    //     var options = {
    //         url: '/catalog/autocomplete',
    //         minLength: 2,
    //         modal: ".header-bottom__exit",
    //         modal_error_class: 'search-modal-error',
    //         noimageSrc: 'noimage.jpg'
    //     };
    //     var methods = {
    //         init: function (data) {
    //             var el = $(this);
    //             el.live('keyup', methods.search);
    //             $('.' + options.modal_error_class).live('click', function (e) {
    //                 $(this).removeClass(options.modal_error_class);
    //                 $(this).hide();
    //                 el.val('');
    //                 el.focus();
    //             });
    //         }, search: function () {
    //             var val = $(this).val();
    //             options.searchPhrase = val;
    //             var limit = Math.floor(($(window).height() - 160) / 60) - 1;
    //             if (val && val.length > options.minLength) {
    //                 $.getJSON(options.url, {q: $(this).val(), l: limit}, function (data) {
    //                     if (data.length > 0) {
    //                         methods.formatResult(data);
    //
    //
    //                     }
    //                     else {
    //                         methods.noResults();
    //                     }
    //                 });
    //             }
    //             else {
    //                 $(options.modal).hide();
    //             }
    //         }, noResults: function () {
    //             var modal = $(options.modal);
    //             modal.addClass(options.modal_error_class);
    //             modal.html('<ul><li>По Вашему запросу ничего не найдено.</li></ul>');
    //         }, formatResult: function (data) {
    //             var modal = $(options.modal);
    //             if (modal.hasClass(options.modal_error_class)) {
    //                 modal.removeClass(options.modal_error_class);
    //             }
    //             modal.html('');
    //             var html = '<div class="search-list"';
    //             $(data).each(function () {
    //                 var i = $(this)[0];
    //                 if (i.imgid != null) {
    //                     var imgSrc = 'catalog/' + i.imgid + '_s.' + i.imgext + '';
    //                 }
    //                 else {
    //                     var imgSrc = options.noimageSrc;
    //                 }
    //                 // html += '<li>\
    //                 // <a href="/catalog/item/' + i.id + '"> \
    //                 //     <span class="search-modal__img"><img src="/images/' + imgSrc + '" alt="" /></span> \
    //                 //     <p>' + i.category + ' ' + i.brand + ' ' + i.name + '</p> \
    //                 // </a></li> \
    //
    //                 html += '<div class="search-list__item search-result">\
    //                 <a href="/catalog/item/' + i.id + '"> \
    //                 <div class="search-result__inner"> \
    //                     <div class="search-result__img"><img src="/images/' + imgSrc + '" alt="" /></div>  \
    //                         <div class="search-result__content">\
    //                             <div class="search-result__content-top">\
    //                                 <h5 class="search-result__name">\' + i.category + \' \' + i.brand + \' \' + i.name + \'</h5>\
    //                             </div>\
    //                             <p class="search-result__coast">2500 грн</p> \
    //                         </div>\
    //                     </div>\
    //                 </a></div> \
    //             ';
    //             });
    //             // html += '<li class="search-modal__link"> \
    //             //         <a href="/catalog/search/' + options.searchPhrase + '">Показать все результаты поиска &rarr;</a> \
    //             //     </li>\
    //             //     </ul>';
    //             html += '<button class="header-search__button"> \
    //                 <a href="/catalog/search/' + options.searchPhrase + '">Показать все результаты поиска &rarr;</a> \
    //             </button>>\
    //             </div>';
    //             modal.append(html)
    //             modal.show();
    //         }
    //     };
    //     $.fn.siteSearch = function (method) {
    //         if (methods[method]) {
    //             return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
    //         } else if (typeof method === 'object' || !method) {
    //             return methods.init.apply(this, arguments);
    //         } else {
    //             $.error('Метод с именем ' + method + ' не существует');
    //         }
    //     };
    // })(jQuery);










    /********************************************************/




    if (window.matchMedia("(max-width: 767px)").matches) {

        /*MOBILE MENU*/

        $('.seo-text').click(function () {
            $(this).toggleClass('opened').toggleClass('closed').next().slideToggle('normal');
            $(this).parent().toggleClass('opened').toggleClass('closed').next().slideToggle('normal');
            if ($(this).hasClass('opened')) {
                $(this).html('Скрыть');
            }
            else {
                $(this).html('Еще');
            }
        });
    }


    if ($('.up-filter').length) {
        $('.up-filter').click(function () {
            $('body, html').animate({scrollTop: 0}, 800);
            return false;
        });
    }

    $(window).scroll(function () {  //Scroll up-filter
        if ($('.left-options').length) {
            // if ($('.base-options, .up-filter').length) {
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

    $('#prod-gift').click(function () {
        $('.left-right .ourr:nth-child(2)').animate({scrollTop: 150}, 800);
        return false;
    });

    if ($('.numb').length) {
        $('.numb').inputmask("+380 (99) 999-9999");


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

    $('#selectyBoxi').selectyboxi();
    // $('selector').selectyboxi();


    (function ($) {
        $.fn.selectypagination = function () {

            var selectDefaultHeight = $('#selectyPagination').height();
            var rotateDefault = "rotate(0deg)";
            var h = $('#selectyMenuPagination').height() + 25;
            $('#selectyPagination > p.valueTagsPag').click(function () {

                var currentHeight = $('#selectyPagination').height();

                if (currentHeight < 50 || currentHeight == selectDefaultHeight) {
                    $('#selectyPagination').height(h);
                    $('div#selectyPagination p.valueTagsPag').addClass('rofl');
                }

                if (currentHeight >= 50) {
                    $('#selectyPagination').height(selectDefaultHeight);
                    $('div#selectyPagination p.valueTagsPag').removeClass('rofl');
                }
            });

            $('li.optionsPag').click(function () {
                $('#selectyPagination').height(selectDefaultHeight);
                $('div#selectyPagination p.valueTagsPag').removeClass('rofl');
                $('p.valueTagsPag').text($(this).text());
            });
        };
    })(jQuery);

    $('.blocks-pagination-selecty').selectypagination();
    // $('selector').selectypagination();

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


//-------Personal office ------
/*function naccs() {
    // var numberIndex = $(this).index();
    var listItemHeight = $(".naccs ul").find("li.active").innerHeight();
    $(".naccs ul.nacc").height(listItemHeight + "px");

}
naccs();*/
// function tabs_h() {
//     $(".brand, .title_block, .tabs-more, .change-data, .change-pass").click(function () {
//       var  a = setInterval(function () {
//             /*naccs();*/
//             console.log(155);
//         },50)
//         setTimeout(function () {
//             clearInterval(a)
//         },1000)
//     })
//
//
// }
// tabs_h();

// if ($('body').hasClass('auth')) {  /*page of auth*/
//     bindings();
// }

$(document).on("click", ".naccs .tabs-menu div", function () {
    var numberIndex = $(this).index();

    if (!$(this).is("active")) {
        $(".naccs .tabs-menu div").removeClass("active");
        $(".naccs ul li").removeClass("active");

        $(this).addClass("active");
        $(".naccs ul").find("li:eq(" + numberIndex + ")").addClass("active");

        /*var listItemHeight = $(".naccs ul")
            .find("li:eq(" + numberIndex + ")")
            .innerHeight();
        $(".naccs ul").height(listItemHeight + "px");*/
    }
});


$('.tabs-legg').click(function () {


    if ($(this).parents('.tabs-brand').hasClass('active')) {

        $('.tabs-brand').removeClass('active');

        // $('.tabs-brand .tabs-his-content').animate({height: 'hide'}, 500);
        // $('.tabs-brand').removeClass('open');
        return true
    }

    $('.tabs-brand').removeClass('active');
    // $('.tabs-brand').removeClass('open');

    $(this).parents('.tabs-brand').addClass('active');
    // $('.tabs-brand .tabs-his-content').animate({height: 'show'}, 500);

});


$('.tabs-more').click(function () {
    $(this).parents('.tabs-brand').toggleClass('more');
    $(this).toggleClass('more');

});


// $('.tabs-more').click(function () {
//     $(this).toggleClass('more');
//     $(this).parents(".brand.active").height('auto');
// });

$('.close-item').click(function () {
    $(this).parents('.item-senn').remove();
});
$('.legg-close').click(function legClose() {
    // $(this).parents('.brand').fadeOut(300);
    $(this).parents('.brand').remove();
});

$('.tabs-saw p').click(function () {
    $('.tabs-saw p').removeClass('active');
    $(this).toggleClass('active')
});

$('.tabs-saw div').click(function () {
    $(".forms.under-senn.forms-saw, .tabs-saw").remove();
});
$('.tabs-pass').click(function () {
    $('.tabs-main').hide();
    $(".change-pass").show();
});
$('.tabs-data').click(function () {

    $('.tabs-main').hide();
    $(".change-data").show();
});
$('.cancel').click(function () {
    $('.tabs-main').show();
    $(".change-data").hide();
    $(".change-pass").hide();
});

$('.create-list').click(function () {
    $('.create-name').addClass('open');
});
$('.create-name .cancel').click(function () {
    $('.create-name').removeClass('open');
});

$('.create-name .bask').click(function () {
    $(' <div class="brand"  data-full="511" data-short="40" style="height: 40px;">\n' +
        '                                            <div></div>\n' +
        '                                            <div class="opti">\n' +
        '                                                <div class="legg"><span>Новый список желаний</span><i></i></div>\n' +
        '                                                <img class="first-img" src="./img/rename.png" alt="">\n' +
        '                                                <img class="legg-close" src="./img/item-close.png" alt="">\n' +
        '\n' +
        '                                                <div class="forms under-senn">\n' +
        '                                                    <div class="item-senn empty">\n' +
        '                                                        <div class="text-empty empty-half"></div>\n' +
        '                                                        <div class="text-empty"></div>\n' +
        '                                                        <div class="text-empty"></div>\n' +
        '                                                        <span class="sench" tabindex="-1">\n' +
        '                                                            <div class="centr">\n' +
        '                                                                <div class="itee-imgg">\n' +
        '                                                                    <img src="./img/empty.png" alt="">\n' +
        '                                                                </div>\n' +
        '                                                            </div>\n' +
        '                                                             <object type="lol/wut">\n' +
        '                                                                    <div class="left-otzv">\n' +
        '                                                                        <img src="./img/empty-stars.png" alt="">\n' +
        '                                                                    </div>\n' +
        '                                                             </object>\n' +
        '                                                            <div class="bakk">\n' +
        '                                                                <div class="left-bakk">\n' +
        '                                                                    <div class="text-empty empty-half"></div>\n' +
        '                                                                    <div class="text-empty empty-half"></div>\n' +
        '                                                                </div>\n' +
        '                                                                <div class="right-bakk">\n' +
        '                                                                     <div class="bask acty empty-but"\n' +
        '                                                                          tabindex="-1"><span></span></div>\n' +
        '                                                                </div>\n' +
        '                                                            </div>\n' +
        '\n' +
        '                                                        </span>\n' +
        '                                                    </div>\n' +
        '                                                    <div class="item-senn empty">\n' +
        '                                                        <div class="text-empty empty-half"></div>\n' +
        '                                                        <div class="text-empty"></div>\n' +
        '                                                        <div class="text-empty"></div>\n' +
        '                                                        <span class="sench" tabindex="-1">\n' +
        '                                                            <div class="centr">\n' +
        '                                                                <div class="itee-imgg">\n' +
        '                                                                    <img src="./img/empty.png" alt="">\n' +
        '                                                                </div>\n' +
        '                                                            </div>\n' +
        '                                                             <object type="lol/wut">\n' +
        '                                                                    <div class="left-otzv">\n' +
        '                                                                        <img src="./img/empty-stars.png" alt="">\n' +
        '                                                                    </div>\n' +
        '                                                             </object>\n' +
        '                                                            <div class="bakk">\n' +
        '                                                                <div class="left-bakk">\n' +
        '                                                                    <div class="text-empty empty-half"></div>\n' +
        '                                                                    <div class="text-empty empty-half"></div>\n' +
        '                                                                </div>\n' +
        '                                                                <div class="right-bakk">\n' +
        '                                                                     <div class="bask acty empty-but"\n' +
        '                                                                          tabindex="-1"><span></span></div>\n' +
        '                                                                </div>\n' +
        '                                                            </div>\n' +
        '\n' +
        '                                                        </span>\n' +
        '                                                    </div>\n' +
        '                                                    <div class="item-senn empty">\n' +
        '                                                        <div class="text-empty empty-half"></div>\n' +
        '                                                        <div class="text-empty"></div>\n' +
        '                                                        <div class="text-empty"></div>\n' +
        '                                                        <span class="sench" tabindex="-1">\n' +
        '                                                            <div class="centr">\n' +
        '                                                                <div class="itee-imgg">\n' +
        '                                                                    <img src="./img/empty.png" alt="">\n' +
        '                                                                </div>\n' +
        '                                                            </div>\n' +
        '                                                             <object type="lol/wut">\n' +
        '                                                                    <div class="left-otzv">\n' +
        '                                                                        <img src="./img/empty-stars.png" alt="">\n' +
        '                                                                    </div>\n' +
        '                                                             </object>\n' +
        '                                                            <div class="bakk">\n' +
        '                                                                <div class="left-bakk">\n' +
        '                                                                    <div class="text-empty empty-half"></div>\n' +
        '                                                                    <div class="text-empty empty-half"></div>\n' +
        '                                                                </div>\n' +
        '                                                                <div class="right-bakk">\n' +
        '                                                                     <div class="bask acty empty-but"\n' +
        '                                                                          tabindex="-1"><span></span></div>\n' +
        '                                                                </div>\n' +
        '                                                            </div>\n' +
        '\n' +
        '                                                        </span>\n' +
        '                                                    </div>\n' +
        '                                                    <div class="item-senn empty">\n' +
        '                                                        <div class="text-empty empty-half"></div>\n' +
        '                                                        <div class="text-empty"></div>\n' +
        '                                                        <div class="text-empty"></div>\n' +
        '                                                        <span class="sench" tabindex="-1">\n' +
        '                                                            <div class="centr">\n' +
        '                                                                <div class="itee-imgg">\n' +
        '                                                                    <img src="./img/empty.png" alt="">\n' +
        '                                                                </div>\n' +
        '                                                            </div>\n' +
        '                                                             <object type="lol/wut">\n' +
        '                                                                    <div class="left-otzv">\n' +
        '                                                                        <img src="./img/empty-stars.png" alt="">\n' +
        '                                                                    </div>\n' +
        '                                                             </object>\n' +
        '                                                            <div class="bakk">\n' +
        '                                                                <div class="left-bakk">\n' +
        '                                                                    <div class="text-empty empty-half"></div>\n' +
        '                                                                    <div class="text-empty empty-half"></div>\n' +
        '                                                                </div>\n' +
        '                                                                <div class="right-bakk">\n' +
        '                                                                     <div class="bask acty empty-but"\n' +
        '                                                                          tabindex="-1"><span></span></div>\n' +
        '                                                                </div>\n' +
        '                                                            </div>\n' +
        '\n' +
        '                                                        </span>\n' +
        '                                                    </div>\n' +
        '\n' +
        '                                                </div>\n' +
        '                                            </div>\n' +
        '\n' +
        '\n' +
        '                                        </div>').appendTo('.lists');
    // bindings();
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

    $slider.each(function () {
        $('#price-filter-max,#price-filter-min').on("change", function () {
            a = $("#price-filter-max").val();
            b = $("#price-filter-min").val();
            console.log(a, b);
            if (a < b) {
                $("#price-filter-max").val(b)
            }

        });


    })


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

    var filterDiv = $('.filter')

    if (filterDiv.hasClass('get-ajax')) {
        var l = window.location.toString();
        var h = l.indexOf('#');
        if (h > -1) {
            l = l.substr(0, h);
        }
        $.get(l + '/only-filters/true', {}, function (data) {
            $('.filter').html(data);
        });
    }
    // $('.share-item').each(function () {
    //     var v = $(this).width() + 39;
    //     $(this).css({
    //         'width': v
    //     });
    // });


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


        $(this).attr('data-full', $(this).height() + 10).attr('data-short', $(this).find('.legg').height()).height($(this).find('.legg').height());
        // $(this).attr('data-full', $(this).height() + 70).attr('data-short', $(this).find('.legg').height()).height($(this).find('.legg').height());

    });


    var cross = '4';

    // function brandAcc() {
    $(".legg").click(function () {
        var full = $(this).parents('.brand').attr('data-full');
        var short = $(this).parents('.brand').attr('data-short');

        if ($(this).parents('.brand').hasClass('active')) {
            $(this).parents('.brand').removeClass('active');
            $(this).parents('.brand').height(short);
        }
        else {
            $(this).parents('.brand').addClass('active');
            $(this).parents('.brand').height(full);
        }

    });
    // }
    // brandAcc();


//     $('.brand').click(function () {
//         var full = $(this).attr('data-full');
//         var short = $(this).attr('data-short');
//
//         if ($(this).hasClass('active')) {
//             $(this).removeClass('active');
//             $(this).height(short);
//         }
// //         else if ($(this).hasClass('foxx')) {
// //             $(this).addClass('active');
// //
// //             //var a = $(this).find('.forms').attr('data-heig');
// //             $(this).height('auto');
// //             $(this).find('.forms').height('auto');
// //             $(this).find('.under-forms').height('auto');
//             // $(this).height('290px');
//             // $(this).find('.forms').height('150px');
//             // $(this).find('.under-forms').height('170px');
// //            $(this).find('.opti').prepend($('<div class="clik">Показать все</div>'));
// //         }
//         else {
//             $(this).addClass('active');
//             $(this).height(full);
//         }
//
//     });


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

function getCompareNew(status) {
    $.get("/catalog/getcompareitem", {},
        function (data) {
            if (data.length > 1) {

                if (status) {
                    $(".mode-comp-pop").html(data);
                } else {
                    $(".mode-comp-pop").html(data).hide();
                }

                $(".bask-item.comp").find('.numeral').html($(data).find('.compare-result-popup').attr('data-count'));
                $('.compare-delete-icon').bind('click', deleteItemFromCompare);
            } else {
                $('.mode-comp-pop').html('<h1>EMPTY</h1>').hide();
                $(".bask-item.comp").find('.numeral').html('0');
            }

        });
}

getCompareNew(false);

$(".bask-item.comp").mouseover(function () {
    $(this).find(".mode-comp-pop").show();
});
$(".bask-item.comp").mouseout(function () {
    $(this).find(".mode-comp-pop").hide();
});

$('.right-butt').bind('click', addItemToCompare);


function addItemToCompare(e) {
    _this = $(this);
    if (_this.hasClass('checked')) {
        return;
    }

    itemId = _this.attr('data-id');

    if (itemId) {
        $.get("/catalog/addcompareitem", {id: itemId}, function (data) {
            getCompareNew(false);
            _this.addClass('checked');
        });
    }
}

$('.compare-delete-icon').bind('click', deleteItemFromCompare);

function deleteItemFromCompare(e) {
    e.preventDefault();
    itemId = $(this).data('id');
    catId = $(this).data('category');

    $.get("/catalog/delcompareitem", {id: itemId, cat: catId},
        function (data) {
            getCompareNew(true);
            $('[data-id=' + itemId + ']').removeClass('checked');
        });
}


/*---------BIND UNBIND---------*/
// function bindings() {
// $('.legg').unbind('click', brandAcc);
// $('.legg-close').unbind('click', legClose);


// $('.legg').bind('click', brandAcc);
// $('.legg-close').bind('click', legClose);
// }

/*---------end BIND UNBIND---------*/



function selectRegion(regionId) {
    $(".data-region-list .options li").each(function () {
        $(this).removeClass('active');
    });
    $("header .phone .selected-option .options li").each(function () {
        $(this).removeClass('active');
    });
    console.log(regionId);
    $.cookie('region', regionId, {expires: 7, path: "/", domain: document.location.hostname, secure: false});
    var el = $("#region_" + regionId);
    $(".numbers").html($(el).data('phone'));
    $(".data-region-list span").html($(el).html());
    $("#region_" + regionId).addClass('active');
    $(".tregion_" + regionId).addClass('active');
    // $('.region-choose > .dropdown').removeClass('open');
    // if ($('.data-region-list span').text() === 'Киев') {
    //     $('header .work-time p').first().show();
    //     $('header .work-time p').last().hide();
    // } else {
    //     $('header .work-time p').first().hide();
    //     $('header .work-time p').last().show();
    // }
    // refreshBasketStats();
}

$(document).ready(function () {
    // console.log($.cookie('region'));
    function cookie_tel() {
        a = $.cookie('region')
        var el = $("#region_" + a);
        // $(".numbers").html($(el).data('phone'));
        $(".data-region-list span").html($(el).html());
        $(".data-region-list .options li").removeClass('active')
        $("header .phone .selected-option .options li").removeClass('active')
        $("#region_" + a).addClass('active');
        $(".tregion_" + a).addClass('active');

    }
    // if()
    cookie_tel();

})
// function refreshBasketStats() {
//     $.getJSON("/basket/getBasketStats", {}, function (data) {
//         // $(".data-basket-amount").html(data.amount);
//         // $(".data-basketSumm").html(data.summ);
//         // $('.data-tableSumm').html(data.summ);
//         // if ($(".data-tableSumm").size() > 0)
//         //     $(".data-tableSumm").html(data.summ + data.delivery);
//         // if ($(".data-transfer").size() > 0) {
//         //     getTransferSumm();
//         // }
//         // if ($('.data-gift').size() == 0) {
//         //     $('.data-giftItem').remove();
//         // }
//         // if ((data.amount == '0' && data.creditAmount == '0'))
//         //     $(".data-basket").html("<center><a href='https://590.ua/'><img src='https://590.ua/assets/media/emptybasket.png' style='max-width: 100% !important;max-height: 100% !important;'></a></center>");
//         // if ((data.amount == '0')) {
//         //     $(".data-order").html("<center><a href='https://590.ua/'><img src='https://590.ua/assets/media/emptybasket.png' style='max-width: 100% !important;max-height: 100% !important;'></a></center>");
//         //     $('.modal-footer .btn-warning').hide();
//         //     $('.shopping-cart a').removeClass('active');
//         // } else {
//         //     $('.modal-footer .btn-warning').show();
//         // }
//     });
// }

// function getTransferSumm() {
//     if ($(".data-transfer").size() > 0) {
//         $.get("/basket/transfersumm", {}, function (data) {
//             console.log(data);
//             if (data.length > 0) {
//                 $(".data-transfer").html(data);
//             } else {
//                 $(".data-transfer").html('');
//             }
//         });
//     }
// }

// $('.kiev').bind('click',function () {
//     getTransferSumm()
// })

// function addToCart(itemId, credit, type, url) {
//     if (!itemId)
//         return false;
//     var getvars = {itemId: itemId};
//     if (credit)
//         getvars.credit = 1;
//     if (type)
//         getvars.type = type;
//     var url = $(this).closest('div').find('p.cat-item-name a').attr('href');
//     $.get("/basket/addtocart", getvars, function (data) {
//         $('.data-basket').html(data);
//         $(".data-amount").keyfilter(/[\d\-]/);
//         $('.shopping-cart a').addClass('active');
//         if (credit)
//             initCalc();
//         if (window.location.href.match('order')) {
//             if (typeof(dojo) != 'undefined') {
//                 if ($("#basket").html() != "<center><a href='https://590.ua/'><img src='https://590.ua/assets/media/emptybasket.png' style='max-width: 100% !important;max-height: 100% !important;'></a></center>") {
//                     var newStore = new dojo.data.ItemFileWriteStore({url: "/basket/getItems"});
//                     if (newStore) {
//                         grid.setStore(newStore);
//                     }
//                 } else
//                     window.location.reload();
//             } else
//                 window.location.reload();
//         } else {
//             refreshBasketStats();
//         }
//         GIHhtQfW_AtmPixel('http://590.ua/basket/addtocart');
//         setTimeout(function () {
//             GIHhtQfW_AtmPixel(url);
//         }, 1000);
//     });
// }

$(document).ready(function () {
    var form = $('.tab-contents.form.is-active form')
    function validform() {
        form.find('.valid').each(function (){
            if ($(this).hasClass('phone')) {
                var pmc = $(this);
                var regCheck = /^[0-9()\-+ ]+$/;
                if (!regCheck.test(pmc.val()) || pmc.val() == '') {
                    pmc.addClass('empty_field');
                } else {
                    pmc.removeClass('empty_field');
                }
            } else if ($(this).hasClass('email')) {
                var mailfield = $(this);
                var pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
                if (pattern.test(mailfield.val())) {
                    mailfield.removeClass('empty_field');
                } else {
                    mailfield.addClass('empty_field');
                }
            } else if ($(this).hasClass('step2-hidden')) {
                var a = $(this);
                if ($('input').is(':checked')) {
                    a.removeClass('empty_field');
                } else {
                    a.addClass('empty_field');
                }
            }


            else if ($(this).val() != '' && $(this).val().length > 3) {
                $(this).removeClass('empty_field');
            } else {
                $(this).addClass('empty_field');
            }





        })
    }

    btn = form.find('input[type="submit"]');

    form.on('submit', function (event) {
        validform();
        if (!btn.length > 0) {
            btn = form.find('input[type="text"]');
            form.find('.valid').addClass('empty_field');
        }
        btn.addClass('disabled');
        var formData = new FormData(this);
        event.preventDefault();
        for (var id in queue) {
            formData.append('images[]', queue[id]);
        }

        $.ajax({
            url: $(this).attr('action'),
            type: 'POST',
            data: formData,
            async: true,

            cache: false,
            contentType: false,
            processData: false
        });

        return false;
    });

})
