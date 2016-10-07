$(document).ready(function(){

  //alert to make sure js is actually called in html page
  alert('hooked up and works');

  //example of jQuery selection statment
  // $('#addClass').click(function(){});

  //example jQuery UI function hook-up
  // $( ".trip_date" ).datepicker();

  //example of src and arbitrary html attributes
  // $(".main img").click(function(){
  //   //alert('hooked up and works');
  //   var temp = $(this).attr('src');
  //   $(this).attr('src', $(this).attr('data-alt-src'));
  //   $(this).attr('data-alt-src', temp);
  // });

  //example of walking the DOM and stopping propagation
  // $('#large_box').click(function(){
  //    $(this).css('background-color', random_color());
  //    $(this).children().css('background-color', random_color());
  // })

  //example of adding event handler for dynamic content
  // $(document).on('click', '.inst', function(){
  //   var d = $(this).parent().attr('user-desc');
  //   console.log(d)
  //   $(this).parent().html("<p>" + d + "</p>");
  // });

  // $('#check_dates').click(function(){
  //   $('#name_alert').hide();
  //   // display error message if user doesn't enter name
  //   if (!$('#name').val()) {
  //     console.log('Name is blank');
  //     $('#name_alert').show();
  //     return false;
  //   }
  //   //Create dialog displaying trip details
  //   var msg = "Thank you, " + $('#name').val() + ". Your trip leaves on " + $('#from').val() + " and returns on " + $('#to').val() + "."
  //   console.log(msg);
  //   $("#confirmation").append("<p>"+msg+"</p>")
  //   $("#confirmation").dialog( "open" );
  //   //clear input fields
  //   $('#to, #from, #name').val("");
  //   //cancel the form submission
  //   return false;
  // });
});
