$(document).ready(function() {
  $('.maintheme').click(function() {
    $('.maintheme').removeClass('on');
    $('.subtheme').slideUp('normal');
   
    if($(this).next().is(':hidden') == true) {
      $(this).addClass('on');
      $(this).next().slideDown('normal');
     } 
   });
  
  $('.maintheme').mouseover(function() {
    $(this).addClass('over');
  }).mouseout(function() {
    $(this).removeClass('over');                    
  });

  $('a').click(function(){
      $('html, body').animate({
          scrollTop: $( $.attr(this, 'href') ).offset().top
      }, 500);
      return false;
  });
});