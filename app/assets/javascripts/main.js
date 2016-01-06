$(document).ready(function(){
  $('.sub_nav_content').on('click', function(){
    $('.main_content_section').removeClass('inactive');
    $('.image_gallery').addClass('inactive');
  });

  $('.sub_nav_gallery').on('click', function(){
    $('.image_gallery').removeClass('inactive');
    $('.main_content_section').addClass('inactive');
  });

  $('.fa-bars').on('click', function(){
    $('#overlay, #overlay-back, .phone_nav').fadeIn(500);
  });

  $('#overlay, #overlay-back').on('click', function(){
    $('#overlay, #overlay-back, .phone_nav').fadeOut(500);
  });

});
