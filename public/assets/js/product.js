$(document).ready(function () {
    /*---------PRODUCT BIG SLIDER---------*/
    $('.slider-for').find('.clone-slide').clone().appendTo('.slider-nav');

    function sliders() {
        $('.slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            fade: true,
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
                    breakpoint: 1024,
                    settings: {
                        arrows: false,
                        slidesToShow: 4
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 3
                    }
                }
            ]
        });
    }

    sliders();

    $('.slider-nav a[data-slide]').click(function (e) {
        e.preventDefault();
        var slideno = $(this).data('slide');
        $('.slider-nav').slick('slickGoTo', slideno - 1);
    });

    $('.cheaper-slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true
    });

    if (window.matchMedia('(max-width: 768px)').matches) {
        $(window).scroll(function () {  //Scroll slider product
            if ($('.slider-wrap').length) {
                var foot = $('.left-right').offset().top;
                var scroll_block = $(window).scrollTop();
                var baner = $('.slider-product');
                var baner_top = $('.slider-wrap').offset().top;

                //scroll_block + 60  - с высотой фиксированного меня
                if (scroll_block > baner_top + 27 && scroll_block + baner.height() + 67 < $('.left-right').height() + foot) {
                    baner.css({"position": 'fixed', top: '0px'});

                } else if (scroll_block + baner.height() + 67 >= $('.left-right').height() + foot) {

                    if (befScroll < scroll_block) {
                        baner.css({'position': 'absolute', 'bottom': '67px', 'top': 'auto'});
                    }
                }
                else if (scroll_block < baner_top + 27) {
                    baner.css({'position': 'relative', top: '0px'});
                }

                //title scroll
                var title = $('.title-slide');
                var mBottom = 67;

                if (scroll_block > baner_top + 103 && scroll_block + title.height() + mBottom < $('.left-right').height() + foot) {
                    title.css({"position": 'fixed', top: '0px'});
                    title.addClass('active-slide');

                } else if (scroll_block + title.height() + mBottom >= $('.left-right').height() + foot) {

                    if (befScroll < scroll_block) {
                        title.css({'position': 'absolute', 'bottom': mBottom + 'px', 'top': 'auto'});
                    }
                }
                else if (scroll_block < baner_top + 103) {
                    title.css({'position': 'relative', top: '0px'});
                    title.removeClass('active-slide');
                }
            }
            befScroll = scroll_block
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
        $('.product-menu a[href^="#prod-questions"]')
        $('html, body').animate({scrollTop: $(target).offset().top - 190}, 800);
        return false;
    });
    /*---------end Anchor slide ease---------*/


});