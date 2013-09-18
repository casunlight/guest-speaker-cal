// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
//collapsing navigation on down scroll to specified change point.

    var changePoint = 100, //y-axis scroll point at which to alter the navigation
        currentPoint = 0; //initially set current point to zero.

    function minifyNav() {
      $('object#minify').css({'display':'block'});
      $('object#bigify').css({'display':'none'});
      $('header').css({'height':'45px'});
      $('nav').css({'margin-top':'-5px'});
      $('object#minify').css({'margin':'10px 0 0'});
    }

    function bigifyNav() {
      $('object#minify').css({'display':'none'});
      $('object#bigify').css({'display':'block'});
      $('header').css({'height':'auto'});
      $('nav').css({'margin':'35px 0 0'});
    }

    $(window).scroll(function() { //windows scrolls event.
      currentPoint = $(document).scrollTop(); //update the current scroll position.
      //console.log(currentPoint);
      if (currentPoint > changePoint) {
        minifyNav(); //shrink nav
      } else {
        bigifyNav(); ///bigify nav
      }
    });

});