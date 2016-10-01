$(document).ready(function(){
  // $('#addClass').click(function(){});
  //alert('hooked up and works');
  $( ".trip_date" ).datepicker();
  $( "#confirmation" ).dialog({
    autoOpen: false,
    buttons: [
      {
        text: "Got it",
        click: function() {
          $( this ).dialog( "close" );
        }
      }
    ]
  });

  $('#check_dates').click(function(){
    console.log($('#to').val());
    console.log($('#from').val());
    console.log($('#name').val());
    var msg = "Thank you, " + $('#name').val() + ". Your trip leaves on " + $('#from').val() + " and returns on " + $('#to').val() + "."
    console.log(msg);
    $("#confirmation").append("<p>"+msg+"</p>")
    $("#confirmation").dialog( "open" );

    if ($('#name').val()) {
      console.log('Name is blank');
    }
    return false;
  });
});
