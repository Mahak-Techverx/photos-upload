/* Document Ready Starts */
$(document).ready(function(){


$("#owl-example").owlCarousel({
 
    // Most important owl features
    items : 1,
    //itemsCustom : false,
    //itemsDesktop : [1199,4],
    //itemsDesktopSmall : [980,3],
    //itemsTablet: [768,2],
    //itemsTabletSmall: false,
    //itemsMobile : [479,1],
    singleItem : true,
    itemsScaleUp : false,
 
    //Basic Speeds
    slideSpeed : 200,
    paginationSpeed : 800,
    rewindSpeed : 1000,
 
    //Autoplay
    autoPlay : false,
    stopOnHover : false,
 
    // Navigation
    navigation : true,
    navigationText : ["prev","next"],
    rewindNav : true,
    scrollPerPage : false,
 
    //Pagination
    pagination : false,
    paginationNumbers: false,
 
    // Responsive 
    responsive: true,
    responsiveRefreshRate : 200,
    responsiveBaseWidth: window,
 
    // CSS Styles
    baseClass : "owl-carousel",
    theme : "owl-theme",
 

    //Auto height
    autoHeight : false

})


// open shopping cart itemns box
$(".cart-items").click(function() {
  $(".cart-items-box").fadeToggle('fast');
  $(".quantity").toggle();
  $(".close-quantity").toggle();
});


// responsive nav open
$(".small-nav").click(function() {
  $(".navigation").fadeToggle('fast');
  $('.small-nav .fa').toggleClass("fa-bars");
  $('.small-nav .fa').toggleClass("fa-times");
});


// if width less - onclick top links hide opened menu
   $(".navigation a").click(function(event) {
    if ($(window).width() < 769) {
      $(".navigation").fadeToggle("fast");
      $('.small-nav .fa').toggleClass("fa-bars");
      $('.small-nav .fa').toggleClass("fa-times");
    }
   });



// scroll to home
$("#homeGo").click(function(event) {
  event.preventDefault();
  var target = "#" + this.getAttribute('data-target');
  $('html, body').animate({scrollTop: $("#top").offset().top-60}, 1000,'easeInOutExpo');
});

// scroll to about
$("#aboutGo").click(function(event) {
  event.preventDefault();
  var target = "#" + this.getAttribute('data-target');
  $('html, body').animate({scrollTop: $("#about").offset().top-50}, 1000,'easeInOutExpo');
});

// scroll to products
$("#productsGo").click(function(event) {
  event.preventDefault();
  var target = "#" + this.getAttribute('data-target');
  $('html, body').animate({scrollTop: $("#products").offset().top-50}, 1000,'easeInOutExpo');
});

// scroll to testimonials
$("#testimonialsGo").click(function(event) {
  event.preventDefault();
  var target = "#" + this.getAttribute('data-target');
  $('html, body').animate({scrollTop: $("#testimonials").offset().top-50}, 1000,'easeInOutExpo');
});

// scroll to contact
$("#contactGo").click(function(event) {
  event.preventDefault();
  var target = "#" + this.getAttribute('data-target');
  $('html, body').animate({scrollTop: $("#contact").offset().top-50}, 1000,'easeInOutExpo');
});



// pause video on modal close/hidden
$('body').on('hidden.bs.modal', '.modal', function () {
$('.sliderVideo').trigger('pause');
})



// play pause video if div has class

/*
 if($('.videoDiv').hasClass("active")){
        //$(".sliderInnerVideo.autoplay").trigger("play");
        $('.sliderInnerVideo').trigger('play');
        $('.sliderInnerVideo').play();
  }

$('#myCarousel').on('slid', function() {
  console.log("affasd");
});
*/



  $('#carousel-example').on('slid.bs.carousel', function () { 
     if($('.videoDiv').hasClass("active")){
        $(".sliderInnerVideo.autoplay").trigger("play");
        $('.sliderInnerVideo').trigger('play');
        }
        else
        {
         $(".sliderInnerVideo.autoplay").trigger("pause");
        $('.sliderInnerVideo').trigger('pause'); 
        }
   })


/*
  $(".videoDiv").on({
    focus: function (e) {
        if ($(".videoDiv").hasClass("active")) {
          $('.sliderInnerVideo').trigger('play');
          $('.sliderInnerVideo').play(); 
        }
    },
    blur: function (e) {
        $('.sliderInnerVideo').trigger('pause');
        $('.sliderInnerVideo').pause(); 
    },
    
})
*/





/*
$('.dropdown-toggle').dropdown();

// open responsive nav section

$( ".responsive-nav-icon" ).click(function() {
  $( ".nav-responsive" ).slideToggle('fast');
});

// toggle responsive nav sublinks
$( ".dropdown-link" ).click(function() {
  $( ".dropdown-menu-responsive" ).slideToggle('fast');
});

// close responsive nav section
$(".cross").click(function(){
    $(".nav-responsive").slideToggle('fast');
});

// toggle side panels
$('.side-panel-heading').on('click', function(event){
event.preventDefault();
$(this).closest('.side-cover').find('.toggleable').stop().slideToggle('fast');
});
*/

});
/* Document Ready Ends */


/* Window.Load Starts */

$(window).load(function() { 
// FlexiSlider Starts
/*
 $('#carousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 210,
    itemMargin: 5,
    asNavFor: '#slider'
  });
*/  
  $('#flexslide1').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: true,
    slideshow: false
    // sync: "#carousel"
  });

  $('#flexslide2').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: true,
    slideshow: false
    // sync: "#carousel"
  });
  
/* 
 $('.flexslider').flexslider({
    animation: "slide"
  });  
*/
  
// FlexiSlider Ends
});
/* Window.Load Ends */



// filter products

    $(function () {
        
        var filterList = {
        
            init: function () {
            
                // MixItUp plugin
                // http://mixitup.io
                $('#productslist').mixitup({
                    targetSelector: '.product',
                    filterSelector: '.filter',
                    effects: ['fade'],
                    easing: 'snap',
                    // call the hover effect
                    //onMixEnd: filterList.hoverEffect()
                });             
            
            },
            
            hoverEffect: function () {
            
                // Simple parallax effect
                $('#productslist .product').hover(
                    function () {
                        //$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
                        //$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');             
                    },
                    function () {
                        //$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
                        //$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');                               
                    }       
                );              
            
            }

        };
        
        // Run the show!
        filterList.init();
        
        
    }); 