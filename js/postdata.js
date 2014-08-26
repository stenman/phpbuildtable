$(document).ready(function(){

  // process the form
  $('form').submit(function(event) {

    var formData = {
      'insert'        : $('input[insert=insert]').val(),
    };

    // process the form
    $.ajax({
      type    : 'POST', // define the type of HTTP verb we want to use (POST for our form)
      url     : '../inc/utilities/process.php', // the url where we want to POST
      data    : formData, // our data object
      dataType  : 'json', // what type of data do we expect back from the server
      encode          : true
    })
      // using the done promise callback
      .done(function(data) {

        // log data to the console so we can see
        console.log(data); 

        // here we will handle errors and validation messages
      });

    // stop the form from submitting the normal way and refreshing the page
    event.preventDefault();
  });
});