$(document).ready(function(){
  // $('#addClass').click(function(){});
  //alert('hooked up and works');
  for (var i = 1; i <= 151; i++) {
    var monster = '<img id="' + i + '" class = "monster" src="http://pokeapi.co/media/img/' + i + '.png">';
    $('#photos').append(monster)
  }

  $(document).on('click', 'img', function(){
    var p_id = $(this).attr('id');
    $('.deck').html("");
    var purl = 'http://pokeapi.co/api/v1/pokemon/' + p_id + '/';
    $.get(purl, function(data){
      console.log(data);
      var html_str = "<h2>Pokemon: " + data.name + '</h2>';
      html_str += '<img class = "monster" src="http://pokeapi.co/media/img/' + p_id + '.png">';
      //html_str += '<p> Types: ' + data.height + '</p>';
      html_str += '<p> Height is: ' + data.height + '</p>';
      html_str += '<p> Weight is: ' + data.weight + '</p>';
      $('.deck').append(html_str);
    }, 'json');

  });

  // $('img').click(function(){
  //   var p_id = $('img[id]');
  //   $('.deck').append(p_id);

    // var purl = 'http://pokeapi.co/api/v1/pokemon/' + p_id + '/';
    // $.get(purl, function(data){
    //   console.log(data);
    //   var html_str = "<h2>Pokemon: " + data.name + '</h2>';
    //   var monster = '<img class = "monster" src="http://pokeapi.co/media/img/' + p_id + '.png">';
    //   $('body').append(monster);
    //   $('body').append(html_str);
    //   $('body').append('<p> Attack is: ' + data.attack + '</p>');
    //   $('body').append('<p> Happiness is: ' + data.happiness + '</p>');
    // }, 'json');

  // });

});
