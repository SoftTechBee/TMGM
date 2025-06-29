const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))

const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))

const pure = new PureCounter();
new PureCounter();

// general js project js
$(function() {
    "use strict";
    const root = document.documentElement;

    // main sidebar menu toggle js
    $('.sidebar-toggle-btn').on('click', function () {
		$('body').toggleClass('sidebar-hide')
	});

    // main theme color setting js
    $('.choose-skin li').on('click', function() {
        const $body = $('body');
        const $this = $(this);
        const existTheme = $('.choose-skin li.active').data('theme');
        $('.choose-skin li').removeClass('active');
        $this.addClass('active');
        $body.attr('data-theme', 'theme-' + $this.data('theme'));
    });

    // card full screen js
    const DIV_CARD = 'div.card';
    $('.card-fullscreen').on('click', function(e) {
        const $card = $(this).closest(DIV_CARD);
        $card.toggleClass('fullscreen');
        e.preventDefault();
        return false;
    });

    /** Function for remove card */
    $('[data-toggle="card-remove"]').on('click', function(e) {
        var $card = $(this).closest(DIV_CARD);
        $card.remove();
        e.preventDefault();
        return false;
    });

    // Monochrome Mode
    $('.monochrome-toggle input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('body').addClass("monochrome");
        } else {
            $('body').removeClass("monochrome");
        }
    });

    // code-show
    $('.card-toggle-one input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('.card-main-one').addClass("show");
        } else {
            $('.card-main-one').removeClass("show");
        }
    });

    $('.card-toggle-two input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('.card-main-two').addClass("show");
        } else {
            $('.card-main-two').removeClass("show"); 
        }
    });

    $('.card-toggle-three input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('.card-main-three').addClass("show");
        } else {
            $('.card-main-three').removeClass("show"); 
        }
    });

    $('.card-toggle-four input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('.card-main-four').addClass("show");
        } else {
            $('.card-main-four').removeClass("show"); 
        }
    });

    // table-show
    $('.table-toggle-one input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('.table-main-one').addClass("show");
        } else {
            $('.table-main-one').removeClass("show");
        }
    });

    $('.table-toggle-two input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('.table-main-two').addClass("show");
        } else {
            $('.table-main-two').removeClass("show");
        }
    });

    $('.table-toggle-three input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('.table-main-three').addClass("show");
        } else {
            $('.table-main-three').removeClass("show");
        }
    });

    $('.table-toggle-four input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('.table-main-four').addClass("show");
        } else {
            $('.table-main-four').removeClass("show");
        }
    });

    $('.table-toggle-five input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('.table-main-five').addClass("show");
        } else {
            $('.table-main-five').removeClass("show");
        }
    });

    $('.table-toggle-six input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('.table-main-six').addClass("show");
        } else {
            $('.table-main-six').removeClass("show");
        }
    });

    // radius-0
    $('.radius-toggle input:checkbox').on('click', function () {
        if($(this).is(":checked")) {
            $('body').addClass("radius-0");
        } else {
            $('body').removeClass("radius-0");
        }
    });

    // Layout section light/dark toggle js
    function toggleTheme(selector) {
        const element = $(selector);
        if (element.attr('data-bs-theme') === 'none') {
            element.attr('data-bs-theme', 'dark');
        } else {
            element.attr('data-bs-theme', 'none');
        }
    } 
    $('.sidebar-toggle input:checkbox').on('click', function () { toggleTheme('.sidebar'); });
    $('.header-toggle input:checkbox').on('click', function () { toggleTheme('header'); });

    // svg icon stroke
    $('.svg-stroke input:radio').on('click', function () {
		var others = $("[name='" + this.name + "']").map(function () {
			return this.value
		}).get().join(" ")
		console.log(others)
		$('body').removeClass(others).addClass(this.value)
	});
    // main layout border toggle js
    $('.bodygradient-toggle input:checkbox').on('click', function () {
		$('body').toggleClass('bg-gradient')
	});
    // main layout border toggle js
    $('.border-toggle input:checkbox').on('click', function () {
		$('body').toggleClass('layout-border')
	});
    // sidebar icon color
    $('.svg-icon-color input:checkbox').on('click', function () {
		$('.menu-list').toggleClass('icon-color')
	});
    // card box shadow
    $('.cb-shadow input:checkbox').on('click', function () {
		$('.card').toggleClass('shadow-active')
	});
    

    // Password Meter
    $(".password-meter .form-control").on("input", function() {
        var matchedCriteria = 0;            
        var password = $(this).val();
        var upperCase= new RegExp('[A-Z]');
        var lowerCase= new RegExp('[a-z]');
        var numbers = new RegExp('[0-9]');
        var specialChars = new RegExp('^(?=.*?[#?!@$%^&*-]).{1,}$');
        if(password.length > 7) {
            matchedCriteria++;
        }
        if(password.length > 0 && password.match(upperCase)) {
            matchedCriteria++;
        }
        if(password.length > 0 && password.match(lowerCase)) {
            matchedCriteria++;
        }
        if(password.length > 0 && password.match(numbers)) {
            matchedCriteria++;
        }
        if(password.length > 0 && password.match(specialChars)) {
            matchedCriteria++;
        }
        $(".password-meter .progress-bar")[0].style.width = (matchedCriteria*20)+"%";
    })
    // Image file input
    $(".image-input .form-control").on("change",function(){
        var url = URL.createObjectURL(this.files[0]);
        $(this).parent().parent().children(".avatar-wrapper")[0].style.background = "url(" + url + ") no-repeat";
    })
    // table select all checkbox js
    $(".select-all.form-check-input").on('change', function ()  {
        //row-selectable
        var isChecked = $(this).is(":checked")
        var rows = $(this).parent().parent().parent().parent().parent().find(".row-selectable");
        if(rows.length > 0) {
            rows.each(function( index ) {
                $( this ).find(".form-check-input")[0].checked = isChecked;
            }); 
        }
    })

    $('.deleterow').on('click',function(){       
    var tablename = $(this).closest('table').DataTable();  
    tablename
        .row( $(this)
        .parents('tr'))
        .remove()
        .draw();  
    } ); 
    
});

// Light/Dark
/*!
* Color mode toggler for Bootstrap's docs (https://getbootstrap.com/)
* Copyright 2011-2022 The Bootstrap Authors
* Licensed under the Creative Commons Attribution 3.0 Unported License.
*/

(() => {
    'use strict'
    const storedTheme = localStorage.getItem('theme')
    const getPreferredTheme = () => {
        if (storedTheme) {
            return storedTheme
        }
    
        return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'light' : 'dark'
    }
    const setTheme = function (theme) {
        if (theme === 'dark' && window.matchMedia('(prefers-color-scheme: dark)').matches) {
            document.documentElement.setAttribute('data-bs-theme', 'dark')
        } else {
            document.documentElement.setAttribute('data-bs-theme', theme)
        }
    }
    setTheme(getPreferredTheme())
    const showActiveTheme = theme => {
        const activeThemeIcon = document.querySelector('.theme-icon-active use')
        const btnToActive = document.querySelector(`[data-bs-theme-value="${theme}"]`)
        const svgOfActiveBtn = btnToActive.querySelector('svg use').getAttribute('href')
    
        document.querySelectorAll('[data-bs-theme-value]').forEach(element => {
            element.classList.remove('active')
        })
    
        btnToActive.classList.add('active')
        activeThemeIcon.setAttribute('href', svgOfActiveBtn)
    }
    window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', () => {
        if (storedTheme !== 'dark' || storedTheme !== 'dark') {
            setTheme(getPreferredTheme())
        }
    })
    window.addEventListener('DOMContentLoaded', () => {
        showActiveTheme(getPreferredTheme())
    
        document.querySelectorAll('[data-bs-theme-value]')
        .forEach(toggle => {
            toggle.addEventListener('click', () => {
                const theme = toggle.getAttribute('data-bs-theme-value')
                localStorage.setItem('theme', theme)
                setTheme(theme)
                showActiveTheme(theme)
            })
        })
    })
})()