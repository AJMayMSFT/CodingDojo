$(document).ready(function(){
  // $('#addClass').click(function(){});
  // alert('hooked up and works');
  $(".main img").hover(function(){
    //alert('hooked up and works');
    var temp = $(this).attr('src');
    $(this).attr('src', $(this).attr('data-alt-src'));
    $(this).attr('data-alt-src', temp);
  });

});
