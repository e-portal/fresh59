$(document).ready(function () {
    /*---------PRODUCT BIG SLIDER---------*/
    if ($('.clone-slide').length > 1) {
        $('.slider-for').find('.clone-slide').clone().appendTo('.slider-nav');


        if (window.matchMedia("(min-width: 1026px)").matches) {
            function sliders() {
                $('.slider-for').slick({
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    fade: false,
                    arrows: false,
                    asNavFor: '.slider-nav'
                });
                $('.slider-nav').slick({
                    slidesToShow: 5,
                    slidesToScroll: 1,
                    asNavFor: '.slider-for',
                    arrows: true,
                    dots: false,
                    focusOnSelect: true,
                    centerPadding: '60px',
                    responsive: [
                        {
                            breakpoint: 1441,
                            settings: {
                                slidesToShow: 4
                            }
                        }
                    ]
                });
            }

            sliders();
        }

        if (window.matchMedia("(max-width: 1025px)").matches) {
            function sliders() {
                $('.slider-for').slick({
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    fade: false,
                    arrows: false,
                    asNavFor: '.slider-nav',
                    responsive: [
                        {
                            breakpoint: 640,
                            settings: {
                                dots: true
                            }
                        }
                    ]
                });
                $('.slider-nav').slick({
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    asNavFor: '.slider-for',
                    arrows: true,
                    dots: false,
                    focusOnSelect: true,
                    centerPadding: '60px',
                    vertical: true,
                    verticalSwiping: true

                });
            }

            sliders();

        }
    }


    if (window.matchMedia("(max-width: 1025px) and (min-width: 768px)").matches) {
        $('.green').after($('.stars-ipad'));
    }
    if (window.matchMedia("(max-width: 767px)").matches) {
        $('.slider-product').before($('.title-slide, .in-stock, .prod-stars'));
    }


    $('.slider-nav a[data-slide]').click(function (e) {
        e.preventDefault();
        var slideno = $(this).data('slide');
        $('.slider-nav').slick('slickGoTo', slideno - 1);
    });

    /*SLIDER CHEAPER TOGETHER*/
    if ($('.cheaper-slider').length) {
        $('.cheaper-slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: true,
            dots: true,
            infinite: true,
            cssEase: 'linear',
            autoplay: true,
            autoplaySpeed: 5000
        });
    }


    if (window.matchMedia('(min-width: 1025px)').matches) {
        var befScroll = 0;
        $(window).scroll(function () {  //Scroll slider product
            if ($('.jq-move-slider-wrap').length) {
                var foot = $('.jq-move-slider').offset().top;
                var scroll_block = $(window).scrollTop();
                var baner = $('.jq-move-slider-product');
                var baner_top = $('.jq-move-slider-wrap').offset().top;
                //scroll_block + 60  - с высотой фиксированного меня
                if (scroll_block > baner_top + 27 && scroll_block + baner.height() + 67 < $('.jq-move-slider').height() + foot) {
                    baner.css({"position": 'fixed', top: '0px'});
                } else if (scroll_block + baner.height() + 67 >= $('.jq-move-slider').height() + foot) {
                    if (befScroll < scroll_block) {
                        baner.css({'position': 'absolute', 'bottom': '67px', 'top': 'auto'});
                    }
                }
                else if (scroll_block < baner_top + 27) {
                    baner.css({'position': 'relative', top: '0px'});
                }
                //title scroll
                var title = $('.slide-tabs');
                var mBottom = 67;
                if (scroll_block > baner_top && scroll_block + title.height() + mBottom < $('.jq-move-slider').height() + foot) {
                    title.css({"position": 'fixed', top: '0px', bottom: 'auto'});
                    title.addClass('active-slide');
                } else if (scroll_block + title.height() + mBottom >= $('.jq-move-slider').height() + foot) {
                    if (befScroll < scroll_block) {
                        title.css({'position': 'absolute', 'bottom': mBottom + 'px', 'top': 'auto'});
                    }
                }
                else if (scroll_block < baner_top) {
                    title.css({'position': 'relative', top: '0px'});
                    title.removeClass('active-slide');
                }


            }
            befScroll = scroll_block;
        });
    }
    /*---------end PRODUCT BIG SLIDER---------*/


    /*---------Anchor slide ease---------*/
    $('.product-menu a[href^="#prod-questions"]').click(function () {
        $('.tabs-review li').removeClass('is-active');
        $('.tabs-review .tab-contents').removeClass('is-active');
        $('.tab-quest').addClass('is-active');
        $('.tabs-review .tab-contents').css('display', 'none');
        $('.tab-quest').css('display', 'block');
    });
    $('.product-menu a[href^="#"]').click(function () {
        $('.product-menu a').removeClass('active');
        $(this).addClass('active');
        var target = $(this).attr('href');
        $('.product-menu a[href^="#prod-questions"]');
        if ($('.product-menu a[href^="#prod-accessories"]')) {
            $('html, body').animate({scrollTop: $(target).offset().top}, 800);
        } else {
            $('html, body').animate({scrollTop: $(target).offset().top - 190}, 800);
        }
        return false;
    });

    /*---------end Anchor slide ease---------*/

    $('.slider-product .present').click(function () {
        $('html, body').animate({scrollTop: $('.price-busket-kredit').offset().top + 150}, 800);
    })

});

$('.items-cat').bind('click', getCats);

function getCats(e) {
    e.preventDefault();

    _this = $(this).data('catid');

    if (("undefined" !== typeof _this) && _this.length !== 0) {

        $('.cat-items').each(function (_this) {
            $(this).hide();
            if (this.hasClass('data-catid-' + _this)) {
                this.show();
            }
        });


        // console.log($('.data-catid-' + _this));

    } else {
        console.log('----------------------')
    }
}
