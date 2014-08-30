$(document).ready(function() {

  var request;

  $("#form_manage_records").submit(function() { return false; });

  $('.btn_submit').click(function(event) {

    if (request) {
      request.abort();
    }

    var $form = $(this).parent().parent("form");
    var $inputs = $form.find("input, select, button, textarea");
    var serializedData = $form.serialize();

    $inputs.prop("disabled", true);

    $('.form-group').removeClass('has-error');
    $('.help-block').remove();
    $('.alert-success').remove();

    request = $.ajax({
      type    : 'POST', 
      url     : 'utilities/process.php',
      data    : serializedData + "&"+ $(this).attr("name")+"=true", 
      dataType  : 'json', 
      encode    : true
    });

    request.done(function(data, response, textStatus, jqXHR) {

      console.log(data); 

      if (!data.success) {
        if (data.errors.insert) {
          $('.form-group').addClass('has-error'); 
          $('.form-group').append('<div class="help-block">' + data.errors.insert + '</div>'); 
        }
        if (data.errors.delete) {
          $('.form-group').addClass('has-error');
          $('.form-group').append('<div class="help-block">' + data.errors.delete + '</div>'); 
        }
      } else {
        $('#form_manage_records').append('<div class="alert-success">' + data.message + '</div>');
      }

      //RELOAD TABLE HERE

    });

    request.fail(function(jqXHR, textStatus, errorThrown) {
      // NOTE: remove this before production?
      console.error("The following error occured: "+textStatus, errorThrown);
    });

    request.always(function () {
      $inputs.prop("disabled", false);
    });

    event.preventDefault();
  });
});