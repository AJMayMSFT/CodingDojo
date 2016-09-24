$(document).ready(function(){
  // $('#addClass').click(function(){});
  $('#mole_two').hide();
  $('#chloe').hide();
  $('#addClass').click(function(){
    $('.addClass_section p').addClass('red');
  });
  $('#append').click(function(){
    $('.append_section div').append("jumped over the lazy dog.");
  });
  $('#text').click(function(){
    $('.text_section p').text("fear, itself.");
  });
  $('#mole_one').click(function(){
    $('#mole_two').show();
    $(this).hide();
  });
  $('#mole_two').click(function(){
    $('#mole_one').show();
    $(this).hide();
  });
  $('#toggle').click(function(){
    $('#chloe').toggle('slow');
  });
  $('#before').click(function(){
    $('.before_section p').before("<h4>It was a dark and stormy night...</h4>")
  });
  $('#after').click(function(){
    $('.after_section p').after("<ul><li>Power cord</li><li>DVI cable</li><li>Lots and lots of coffee</li></ul>")
  });
  $('#val').click(function(){
    var myVal = $('.val_section input').val();
    $('#foo').text(myVal);
  });
  $('#attr').click(function(){
    $('#bar').text($('#ID1234').attr('id'));
  });
});
