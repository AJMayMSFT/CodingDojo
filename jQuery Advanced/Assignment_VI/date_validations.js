$(document).ready(function(){
  // $('#addClass').click(function(){});
  //alert('hooked up and works');
  // $('#name_alert').hide();
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
    $('#name_alert').hide();
    // display error message if user doesn't enter name
    if (!$('#name').val()) {
      console.log('Name is blank');
      $('#name_alert').show();
      return false;
    }
    //Create dialog displaying trip details
    var msg = "Thank you, " + $('#name').val() + ". Your trip leaves on " + $('#from').val() + " and returns on " + $('#to').val() + "."
    console.log(msg);
    $("#confirmation").append("<p>"+msg+"</p>")
    $("#confirmation").dialog( "open" );
    //clear input fields
    $('#to, #from, #name').val("");
    //cancel the form submission
    return false;
  });
});
