jQuery(function ($) {

    $(function() {
            Grid.init();
        });
    $('.banner-slider').owlCarousel({
        loop:true,
        autoplay: true,
        items:1,
        dots: false,
        nav: false,
        responsive:{
            0:  { items:1, center:true },
            480:{ items:1 },
            678:{ items:1 },
            960:{ items:1 }
        }
    });


    $('.pj-list-slider').owlCarousel({
        loop:false,
        autoplay: true,
        items:1,
        margin: 0,
        dots: false,
        nav: true,
        navText: ["<img src='public/images/i-prev.png'>","<img src='public/images/i-next.png'>"],
        responsive:{
            0:  { items:1, center:true },
            480:{ items:1 },
            678:{ items:1 },
            960:{ items:1 }
        }
    });

        $(window).on("scroll", function () {
        if ($(window).scrollTop() > 122) {
            $("header").addClass("active");
        }
        else {
            //remove the background property so it comes transparent again (defined in your css)
            $("header").removeClass("active");
        }
    });



    $('.showMenu-btn').click(function (e) {
        e.preventDefault();
        // $('body').css('overflow', 'hidden');
        $('.nav-fixed').addClass('show');

    });

    $('.closeMenu-btn').click(function (e) {
        e.preventDefault();
        $('.nav-fixed').removeClass('show');
        // $('body').css('overflow', 'auto');
    });

    // menu mobile
    jQuery(document).ready(function ($) {
        var $lateral_menu_trigger = $('#cd-menu-trigger'),
            $content_wrapper = $('.cd-main-content'),
            $navigation = $('header');

        //open-close lateral menu clicking on the menu icon
        $lateral_menu_trigger.on('click', function (event) {
            event.preventDefault();

            $lateral_menu_trigger.toggleClass('is-clicked');
            $navigation.toggleClass('lateral-menu-is-open');
            $content_wrapper.toggleClass('lateral-menu-is-open').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function () {
                // firefox transitions break when parent overflow is changed, so we need to wait for the end of the trasition to give the body an overflow hidden
                $('body').toggleClass('overflow-hidden');
            });
            $('#cd-lateral-nav').toggleClass('lateral-menu-is-open');

            //check if transitions are not supported - i.e. in IE9
            if ($('html').hasClass('no-csstransitions')) {
                $('body').toggleClass('overflow-hidden');
            }
        });

        //close lateral menu clicking outside the menu itself
        $content_wrapper.on('click', function (event) {
            if (!$(event.target).is('#cd-menu-trigger, #cd-menu-trigger span')) {
                $lateral_menu_trigger.removeClass('is-clicked');
                $navigation.removeClass('lateral-menu-is-open');
                $content_wrapper.removeClass('lateral-menu-is-open').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function () {
                    $('body').removeClass('overflow-hidden');
                });
                $('#cd-lateral-nav').removeClass('lateral-menu-is-open');
                //check if transitions are not supported
                if ($('html').hasClass('no-csstransitions')) {
                    $('body').removeClass('overflow-hidden');
                }

            }
        });

        //open (or close) submenu items in the lateral menu. Close all the other open submenu items.
        $('.item-has-children').children('.arrow').on('click', function (event) {
            event.preventDefault();
            $(this).parent('.item-has-children').toggleClass('li-active');
            $(this).toggleClass('submenu-open').next('.sub-menu').slideToggle(200).end().parent('.item-has-children').siblings('.item-has-children').children('a').removeClass('submenu-open').next('.sub-menu').slideUp(200);
        });
    });

    $('.language-choose').click(function () {
            $('.language-list').slideToggle('400');
        });

        $('.language-list li').click(function () {
            $('.language-list').css('display', 'none');
           var text =  $(this).html();
           $('.language-choose').html(text);
        })
    new WOW().init();

    
});
