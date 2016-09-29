$(document).ready(function(){
  // $('#addClass').click(function(){});
  //alert('hooked up and works');
  $(document).on('click', '#add_button', function(){
    var user_name = $('#fname').val() + ' ' + $('#lname').val();
    var user = '<div class="card" user-desc="' + $('#description').val() + '" user-name="' + user_name + '"><h3>' + user_name + '</h3><p class="inst">Click for description</p></div>'
    $('#card_pane').append(user);
    // console.log(user);
    $('.user_input').val("");
    return false;
  });

  $(document).on('click', '.inst', function(){
    var d = $(this).parent().attr('user-desc');
    console.log(d)
    $(this).parent().html("<p>" + d + "</p>");
  });

  $(document).on('click', '#card_pane p', function(){
    var user_name = $(this).parent().attr('user-name');
    // var d = $(this).parent().attr('user-desc');
    var user = '<h3>' + user_name + '</h3><p class="inst">Click for description</p></div>'
    $(this).parent().html(user);
  });

});
