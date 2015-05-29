// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("slow");
    });

  var current_h = null;
  var current_w = null;

  $('.resize').hover(
      function(){
          current_h = $(this, 'img')[0].height;
          current_w = $(this, 'img')[0].width;
          $(this).stop(true, false).animate({width: (current_w * 1.3), height: (current_h * 1.3)}, 300);
      },
      function(){
          $(this).stop(true, false).animate({width: current_w + 'px', height: current_h + 'px'}, 300);
      }
  );

});

// $('creature').hover(makeBigger, returnToOriginalSize);

// function makeBigger() {
//     $(this).css({height: '+=20%', width: '+=10%'});
// }
// function returnToOriginalSize() {
//     $(this).css({height: "", width: ""});
// }



// $(window).load(function () {
//   $('#dvLoading').fadeOut(2000);
// });
