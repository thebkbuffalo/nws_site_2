$(document).ready(function(){
  $('.water_testing_nav').on('click', function(){
    $('.water_testing_content').removeClass('inactive');
    $('.water_testing_gallery').addClass('inactive');
  });

  $('.water_testing_gallery_nav').on('click', function(){
    $('.water_testing_gallery').removeClass('inactive');
    $('.water_testing_content').addClass('inactive');
  });
});
