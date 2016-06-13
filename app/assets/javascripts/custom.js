;$(function() {
    $('#login-form-link').click(function(e) {
        $("#login-form").delay(100).fadeIn(100);
        $("#register-form").fadeOut(100);
        $('#register-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#register-form-link').click(function(e) {
        $("#register-form").delay(100).fadeIn(100);
        $("#login-form").fadeOut(100);
        $('#login-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
});

;(function($) {
    "use strict";
    var HAINTHEME = HAINTHEME || {};
    var previousScroll = 0;

    //== Check if element exist
    //
    $.fn.exists = function(callback) {
        var args = [].slice.call(arguments, 1);
        if (this.length) {
            callback.call(this, args);
        }
        return this;
    };

    //===== Header area
    //
    HAINTHEME.navbar = function() {
        //** Sticky nav
        //
        var stickyNav = function() {
            $('.sticky-nav').on({
                'sticky-start' : function() {
                },
                'sticky-end' : function() {
                }
            });
        }
        //** Mega menu
        //
        var megaMenuEffect = function() {
            $('#ht-main-nav li.mega-menu').each(function() {
                $(this).on({
                    mouseenter: function(e) {
                        $(this).addClass('active');
                        $(this).find('ul').first()
                            .css({display:"block"})
                            .stop()
                            .animate(
                            {
                                opacity: 1
                            },
                            {
                                duration: 300
                            }
                        );
                    },
                    mouseleave: function(e) {
                        $(this).removeClass('active');
                        $(this).find('ul').first()
                            .stop()
                            .animate(
                            {
                                opacity: 0
                            },
                            {
                                duration: 300,
                                complete : function() {
                                    $(this).css({display:"none"});
                                }
                            }
                        );
                    }
                });
            });
        };
       
        //** Search form
        //
        var searchFormExpand = function() {
            $('.ct-search').find('button').each(function(){
                var inputText = $(this).parent().find('input');
                $(this).on('click', function(e){
                    if (!inputText.hasClass('is-visible')) {
                        inputText.addClass('is-visible').focus();
                        inputText.animate(
                            {
                                width: 180,
                                opacity: 1
                            },
                            {
                                duration: 300
                            }
                        );
                        $(this).addClass('is-active');
                    } else {
                        inputText.removeClass('is-visible');
                        inputText.animate(
                            {
                                width: 0,
                                opacity: 0
                            },
                            {
                                duration: 300
                            }
                        );
                        $(this).removeClass('is-active');
                    }
                    e.preventDefault();
                    e.stopPropagation();
                });
            });
            $('#ht-search-form')
                .on('show.bs.modal', function(event) {
                    $('.search-toggle').addClass('active');
                })
                .on('shown.bs.modal', function(event) {
                    $(this).find('input').focus();
                })
                .on('hidden.bs.modal', function(event) {
                    $('.search-toggle').removeClass('active');
                })
            ;
        };
        //** Mobile nav
        //
        var mobileNav = function() {
            $('.mobile-control-toggle button.mobile-nav-toggle').on('click', function(e){
                if (!$('.mobile-nav').hasClass('is-open')) {
                    $('.mobile-nav').addClass('is-open');
                    $('body').addClass('mobile-menu-is-open');
                    $(this).addClass('is-open');
                } else {
                    $('.mobile-nav').removeClass('is-open');
                    $('body').removeClass('mobile-menu-is-open');
                    $(this).removeClass('is-open');
                }
                e.stopPropagation();
            });
        };
        //** Mobile submenu
        //
        var mobileSubNav = function() {
            $('.mobile-nav').find('.sub-menu-toggle').on('click', function(e){
                var subMenu = $(this).parent().find('ul').first();
                var thisLi = $(this).parent();
                if ( subMenu.css('display') != 'block' ) {
                    subMenu.css('display','block');
                    thisLi.addClass('is-open');
                } else {
                    subMenu.css('display','none');
                    thisLi.removeClass('is-open');
                }
                e.stopPropagation();
            });
        }
        //** Touch anywhere to close
        //
        var anywhereClose = function() {
            $(document).on('click', function() {
                // Close search form desktop
                var inputText = $('.main-nav-control-toggles').find('input');
                if (inputText.hasClass('is-visible')) {
                    inputText.removeClass('is-visible');
                    inputText.animate(
                        {
                            width: 0,
                            opacity: 0
                        },
                        {
                            duration: 300
                        }
                    );
                    $('.ct-search').find('button').removeClass('is-active');
                }
                // Close mobile nav
                var mobileMenu = $('.mobile-nav');
                if (mobileMenu.hasClass('is-open')) {
                    $('body').removeClass('mobile-menu-is-open');
                    $('.mobile-nav').removeClass('is-open');
                    $('.mobile-control-toggle button.mobile-nav-toggle').removeClass('is-open');
                }
            });
        };
        //** Stop propagation for anywhere close
        //
        var clearPropagation = function() {
            var mobileNav = $('.mobile-nav');
            var searchForm = $('.ct-search input');
            $(mobileNav, searchForm).on('click', function(e){
                e.stopPropagation();
            });
        };
        //** Invoking
        //
        stickyNav();
        megaMenuEffect();
        // dropdownMenuEffect();
        searchFormExpand();
        mobileNav();
        mobileSubNav();
        anywhereClose();
        clearPropagation();
    };

    //===== Slider
    //
    HAINTHEME.slider = function() {
        $('.flexslider.basic').each(function(){
            $(this).flexslider({
                namespace       :   "flex-",
                selector        :   ".slides > li",
                animation       :   $(this).data('effect'), //"fade" or "slide"
                slideshow       :   $(this).data('auto'), // Boolean: Animate slider automatically
                easing          :   "easeInOutExpo", // Easing
                useCSS          :   true, // Use css animation
                direction       :   $(this).data('direction'), // horizontal, vertical
                controlNav      :   $(this).data('pager'), // Pagination
                directionNav    :   $(this).data('navi'), // Next, prev
                animationSpeed  :   $(this).data('animation-speed'),
                slideshowSpeed  :   $(this).data('slide-speed'),
                smoothHeight    :   true,
                prevText        :   '<i class ="fa fa-chevron-left"></i>',
                nextText        :   '<i class ="fa fa-chevron-right"></i>'
            });
        });
        $('.flexslider.sync').each(function(){
            $($(this).data('sync')).flexslider({
                asNavFor        :   $('#'+$(this).attr('id')),
                animation       :   "slide",
                itemWidth       :   60,
                directionNav    :   false,
                controlNav      :   false,
                animationLoop   :   false,
                itemMargin      :   0
            });
            $(this).flexslider({
                sync            :   $(this).data('sync'),
                namespace       :   "flex-",
                selector        :   ".slides > li",
                animation       :   $(this).data('effect'), //"fade" or "slide"
                slideshow       :   $(this).data('auto'), // Boolean: Animate slider automatically
                useCSS          :   true, // Use css animation
                direction       :   $(this).data('direction'), // horizontal, vertical
                controlNav      :   $(this).data('pager'), // Pagination
                directionNav    :   $(this).data('navi'), // Next, prev
                animationSpeed  :   $(this).data('animation-speed'),
                slideshowSpeed  :   $(this).data('slide-speed'),
                smoothHeight    :   false,
                prevText        :   '<i class ="fa fa-chevron-left"></i>',
                nextText        :   '<i class ="fa fa-chevron-right"></i>'
            });
        });
        $('.ht-carousel').each(function(){
            $(this).find('.slides').owlCarousel({
                responsive : {
                    0: {
                        items: $(this).data('items')[0]
                    },
                    481: {
                        items: $(this).data('items')[1]
                    },
                    769: {
                        items: $(this).data('items')[2]
                    },
                    993: {
                        items: $(this).data('items')[3]
                    },
                    1201: {
                        items: $(this).data('items')[4]
                    }
                },
                loop: $(this).data('loop'),

                autoplay: $(this).data('auto'),
                autoplayTimeout: $(this).data('slide-speed'),
                autoplayHoverPause: true,

                smartSpeed: $(this).data('animation-speed'),

                fallbackEasing: 'swing',

                nestedItemSelector: false,
                itemElement: 'div',
                stageElement: 'div',

                // Classes and Names
                themeClass: '',
                baseClass: 'owl-carousel',
                itemClass: 'owl-item',
                centerClass: 'center',
                activeClass: 'active',

                dots: $(this).data('pager'),
                nav: $(this).data('navi'),
                navText: ['<i class ="fa fa-chevron-left"></i>', '<i class ="fa fa-chevron-right"></i>']
            });
        });
    };

    //===== Isotope
    //
    HAINTHEME.isotope = function() {
        $('.isotope-filter').each(function(){
            var targetGrid = $(this).data('target');
            $(targetGrid).isotope({
                itemSelector: '.entry',
                layoutMode: 'masonry',
                transitionDuration: '1s'
            });
            $(this).find('a').on( 'click', function(e) {
                $(this).parent().parent().find('li').removeClass('is-filtered');
                $(this).parent().addClass('is-filtered');
                var filterValue = $(this).data('filter');
                $(targetGrid).isotope({
                    filter: filterValue,
                    transitionDuration: '1s'
                });
                //e.preventDefault();
            });
        });
    };

    //===== Masonry
    //
    HAINTHEME.masonry = function() {
        $('.ht-masonry-layout').each(function(){
            var gridSizer = $(this).data('grid-size');
            $(this).isotope({
                layoutMode: 'masonry',
                columnWidth: gridSizer,
                isFitWidth: true,
                gutter: '1'
            });
        });
    };

    //===== Comment Reply
    //
    HAINTHEME.commentReply = function() {
        var html =
        '<div class="comment-reply">'+
            '<button class="close">&times;</button>'+
            '<div class="">'+
                '<h3 class="heading">REPLY TO THIS COMMENT</h3>'+
            '</div>'+
            '<form action="">'+
                '<div class="form-group half">'+
                    '<label for="">Name <span class="label-description">(ex: William) <sup>*</sup></span></label>'+
                    '<input type="text">'+
                '</div>'+
                '<div class="form-group half">'+
                    '<label for="">Email <span class="label-description">(Not Published)</span> <sup>*</sup></label>'+
                    '<input type="text">'+
                '</div>'+
                '<div class="form-group half">'+
                    '<label for="">Website <span class="label-description">(Optional)</span></label>'+
                    '<input type="text">'+
                '</div>'+
                '<div class="form-group">'+
                    '<label for="">Comment <sup>*</sup></label>'+
                    '<textarea name="" id="" cols="30" rows="5"></textarea>'+
                '</div>'+
                '<div class="form-group submit-group">'+
                    '<div><input type="checkbox"> Notify me of followup comments in this post via email</div>'+
                    '<button type="submit" class="ht-button view-more-button">'+
                        '<i class="fa fa-arrow-left"></i> SUBMIT <i class="fa fa-arrow-right"></i>'+
                    '</button>'+
                '</div>'+
            '</form>'+
        '</div>'

        $('.comment-reply-link').on('click', function() {
            var target = $(this).attr('href');
            if ($(target).find('.comment-reply').length == 0) {
                $(target).find('.comment-content').append(html);
            }
        });

        $(document).on('click', '.comment-reply .close', function(){
            $(this).parent().remove();
        });
    };

    HAINTHEME.recipeSubmit = function() {
        var minutesConverter = function(minute) {
            var hou = Math.floor(minute / 60);
            var min = minute % 60;

            hou = hou > 9 ? hou : '0' + hou;
            min = min > 9 ? min : '0' + min;

            return hou + ':' + min;
        }
        $('.upload').each(function() {
            var $target = $($(this).data('target'));
            var $button = $(this).find('a.upload-trigger');
            var $visibleInput = $(this).find('.upload-visible');

            $button.on('click', function(e) {
                $target.trigger('click');
                e.preventDefault();
            })
            $target.on('change', function() {
                $visibleInput.val($(this).val());
            })
        });
        $( ".slider-range" ).each(function() {
            var $this = $(this);
            var $targetInput = $($(this).data('target'));
            $this.slider({
                // range: true,
                min: 0,
                max: $(this).data('max') * 60,
                step: 1,
                values: [ 0 ],
                slide: function( event, ui ) {
                    $targetInput.val( minutesConverter(ui.values[ 0 ]) );
                }
            });
        })
    };

    HAINTHEME.others = function() {
        $("#dp-hook").DateTimePicker();

        $('.ht-accordion').each(function() {
            var $this = $(this);
            $(this).find('.panel-heading').on('click', function() {
                $this.find('.panel-heading').removeClass('current');
                $(this).addClass('current');
            })
        });

        $('.entry-ingredient').find('tr').on('click', function() {
            $(this).toggleClass('is-done');
        });

        $(".action-print").printPage({
            message: 'Loading print ...'
        });

        $('.action-share').each(function() {
            $(this).on({
                mouseenter: function(e) {
                    if( $(window).width() >= 768 ) {
                        $( this ).find( ".entry-social" )
                            .css({ display:"block" })
                            .stop()
                            .animate(
                                {
                                    opacity: 1,
                                    top: '-60'
                                },
                                {
                                    duration: 300
                                }
                        );
                    }
                },
                mouseleave: function(e) {
                    if( $( window ).width() >= 768 ) {
                        $( this ).find( ".entry-social" )
                        .stop()
                        .animate(
                            {
                                opacity: 0,
                                top: '-40'
                            },
                            {
                                duration: 300,
                                complete : function() {
                                    $( this ).css({ display:"none" });
                                }
                            }
                        );
                    }
                }
            });
        });
    };

    $(document).ready( function() {
        $('html').removeClass('no-js');

        HAINTHEME.navbar();
        HAINTHEME.recipeSubmit();
        // HAINTHEME.others();
    });
})(jQuery); // EOF


if ($('#back-to-top').length) {
    var scrollTrigger = 100, // px
        backToTop = function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > scrollTrigger) {
                $('#back-to-top').addClass('show');
            } else {
                $('#back-to-top').removeClass('show');
            }
        };
    backToTop();
    $(window).on('scroll', function () {
        backToTop();
    });
    $('#back-to-top').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: 0
        }, 700);
    });
}
