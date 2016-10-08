function displayCaption(){
  //highlight the proper language type description
  //display the appropriate stack caption
  $('.tile, .new_tile').click(function(){
    var lang = $(this).attr('data-lang');
    //console.log(lang);

    if (lang == "script"){
      $('#script').css('border', '1px solid blue');
      $('#compiled').css('border', 'none');
    }
    else{
      $('#compiled').css('border', '1px solid blue');
      $('#script').css('border', 'none');
    };

    //console.log($(this).attr('data-stack'));
    var stack = $(this).attr('data-stack');
    var caption = $('#'+ stack);
    $(caption).siblings().hide();
    $(caption).show();

    $(this).css('border', '1px solid blue');
    $(this).siblings().css('border', 'none');

  });
}

$(document).ready(function(){
  displayCaption();

  //Create new language tile and hook up event reciever for it
  $(document).on('click', '#add_lang', function(){
    var new_lang = $('#new_lang').val();
    console.log(new_lang);
    var new_tile = '<div class="new_tile" data-stack="' + new_lang + '" data-lang="compiled">';
    new_tile+= '<p>' + new_lang + '</p>';
    new_tile+='</div>';
    //console.log(new_tile);

    $('.tile_collection').append(new_tile);
    var new_caption = '<p id="' + new_lang + '" hidden>' + new_lang + '</p>';
    $('.description').append(new_caption);
    displayCaption();
    $('#new_lang').val("");
    return false;
  });

  $('#submit_comment').click(function(){
    var new_comment = '<p>' + $('#enter_comment').val() + '</p>';
    //console.log(new_comment);
    $('#comment_list').prepend(new_comment);
    $('#enter_comment').val("");
    return false;
  });

});
