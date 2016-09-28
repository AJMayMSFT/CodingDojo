$(document).ready(function(){
  // $('#addClass').click(function(){});
  //alert('hooked up and works');
  $('#add_button').click(function(){
    var row = "<tr><td>" + $('#fn').val() + "</td><td>" + $('#ln').val() + "</td><td>" + $('#em').val() + "</td><td>" + $('#con').val() + "</td></tr>";
    //console.log(row);
    $('#table_users').append(row);
    $('.user_input').val("");
    return false;
  });
});
