$(document).ready(function(){
  // $('#addClass').click(function(){});
  // alert('hooked up and works');
  $( "#menu" ).menu();
  $( "#accordion" ).accordion();

  $(document).on('click', '#run_snippet', function(){
    //alert('hooked up and works');
    return false;
  });
});
