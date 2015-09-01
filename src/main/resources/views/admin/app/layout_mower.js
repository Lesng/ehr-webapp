var Layout = (function($, utils, window, document, undefined) {

    var resBreakpointMd = utils.getResponsiveBreakpoint('md');

    // private functions & variables
    var resizeHeaderMenu = function() {
        
    };

    
    var initBreadCrumb = function() {
        $(".sidebar-menu").on('complete.mu.sidebarMenu', function(event) {
            var defaultVal = $(document)[0].title;
            $(".breadcrumb").find('li.active').empty().append('<i class="fa fa-home home"></i><span>' + decodeURIComponent(defaultVal) + '</span>');
        });
    };
    
    var initMainMenu = function() {

        var rcode = Cookie.readCookie('rcode'),
            mcode = Cookie.readCookie('mcode'),
            selectedMenu = rcode ? $('.header-menu li:not(.dropdown) a[mcode="' + 'DATA_RESOURCE_ADMIN' + '"]') : $('.header-menu li:not(.dropdown):first a');

        if (!rcode) {
            rcode = selectedMenu.attr('mcode');
        }
        
        $(".sidebar-menu").sidebarMenu({
            'url': menuUrl,
            "populate": true
        }).sidebarMenu('populate', rcode, mcode);

        selectedMenu.closest('li').addClass('active').siblings().removeClass('active');

        //change text if click dropdown-menu's a 
        var $parent = selectedMenu.closest('ul.dropdown-menu');
        if ($parent.length) {
            $parent.parent().addClass('active').siblings().removeClass('active');

            var $caret = $parent.parent().find('span.caret');
            $parent.parent().find('.dropdown-toggle').html(selectedMenu.text()).append(' ').append($caret);
        } else {
            selectedMenu.closest('li').siblings('.dropdown').find('li').removeClass('active');
        }

        //handle menu click event and redirect url
        $('.header-menu').on('click', 'li:not(.dropdown) > a', function(event) {
            event.preventDefault();

            var $this = $(this),
                rcode = $this.parents('li.dropdown').find('a:first').attr('mcode'),
                mcode = $this.attr('mcode'),
                purl = $this.attr('data-href');
            Cookie.createCookie('rcode', rcode, 1);
            Cookie.createCookie('mcode', mcode, 1);
            window.location = base + '/' + purl;
        });
    };
    
    var initiateSideMenu = function() {

    	//Sidebar Toggler
        $(".sidebar-toggler").on('click', function() {
            $("#sidebar").toggleClass("hide");
            $("body").toggleClass("mu-sidebar-closed");
            $(".sidebar-toggler").toggleClass("active");
            Cookie.createCookie('sidebar-toggler', $(".sidebar-toggler").hasClass('active'), 30);
            Cookie.eraseCookie('sidebar-collapse');
            return false;
        });
               
        //End Sidebar Toggler

        //Sidebar Collapse
        var b = $("#sidebar").hasClass("menu-compact");
        $("#sidebar-collapse").on('click', function() {
            if (!$('#sidebar').is(':visible')) {
                $("body").toggleClass("mu-sidebar-closed");
                $("#sidebar").toggleClass("hide");
            }

            $("#sidebar").toggleClass("menu-compact");
            $('body').toggleClass("mu-sidebar-compact");
            $(".sidebar-collapse").toggleClass("active");
            b = $("#sidebar").hasClass("menu-compact");

            if ($(".sidebar-menu").closest("div").hasClass("slimScrollDiv")) {
                $(".sidebar-menu").slimScroll({
                    destroy: true
                });
                $(".sidebar-menu").attr('style', '');
            }
            if (b) {
                $(".open > .submenu")
                    .removeClass("open");
            } else {
                if ($('.mu-sidebar').hasClass('sidebar-fixed')) {
                    var position = (Cookie.readCookie("rtl-support") || location.pathname == "/index-rtl-fa.html" || location.pathname == "/index-rtl-ar.html") ? 'right' : 'left';
                    $('.sidebar-menu').slimscroll({
                        height: 'auto',
                        position: position,
                        size: '3px',
                        color: themeprimary
                    });
                }
            }
            Cookie.createCookie('sidebar-collapse', b, 30);
            Cookie.eraseCookie('sidebar-toggler');
            //Slim Scroll Handle
        });
        //End Sidebar Collapse
        
        // Recovert Sidebar Status
        if(Cookie.readCookie('sidebar-collapse') == 'true') {
        	$("#sidebar-collapse").click();
        } 
        if(Cookie.readCookie('sidebar-toggler') == 'true') {
        	$(".sidebar-toggler").click();
        }
        // End Recovert Sidebar Status

        $(".sidebar-menu").on("clickMenu.mu.sidebarMenu", function(event) {
            event.preventDefault();

            //scripts as below traffic default implement in sidebarMenu plugin
            var title = event.instance.name,
                rcode = event.rcode,
                mcode = event.mcode;

            var purl = base + (event.href.indexOf("/") == 0 ? event.href : "/" + event.href);

            Cookie.createCookie('rcode', rcode, 1);
            Cookie.createCookie('mcode', mcode, 1);

            window.location = purl;
        });
    };
    
    var loading = function() {
        /*Loading*/
        $(window).load(function() {
        	setTimeout(function() {
        		$('.loading-container').addClass('loading-inactive');
            }, 500);
        });
    };

    // public functions
    return {
        //main function
        init: function() {
        	loading();
            initMainMenu();
            initBreadCrumb();
            initiateSideMenu();

            utils.addResizeHandler(resizeHeaderMenu);
            resizeHeaderMenu();

            //Handle RTL SUpport for Changer CheckBox
            $("#skin-changer li a").click(function() {
                Cookie.createCookie("current-skin", $(this).attr('rel'), 10);
                window.location.reload();
            });
        }
    };
}(jQuery, Utils, window, document));


$(document).ready(function() {
    Layout.init();
});