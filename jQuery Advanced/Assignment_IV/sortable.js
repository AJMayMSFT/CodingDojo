$(document).ready(function(){
  // $('#addClass').click(function(){});
  //alert('hooked up and works');

  $( "#sortable" ).sortable({
    revert: true
  });

  $( "ul, li" ).disableSelection();

});
