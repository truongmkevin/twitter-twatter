$(document).on('turbolinks:load', function() {

  console.log("THIS SHOULD APPEAR")

  $('#unfollow-btn').hover(function(){
    $(this).removeClass('btn-primary');
    $(this).addClass('btn-danger');
    $(this).html("Unfollow");
  }, function(){
    $(this).html("Following");
    $(this).removeClass('btn-danger');
    $(this).addClass('btn-primary');
  });

})