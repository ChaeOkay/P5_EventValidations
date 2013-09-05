$(document).ready(function () {

  //New Event - Datepicker
  $('.datepicker').datepicker({
    format: 'dd-mm-yyyy'
    //format for AR validation check agains Date.today
  });

  // send an HTTP DELETE request for the sign-out link
  $('a#sign-out').on("click", function (e) {
    e.preventDefault();
    var request = $.ajax({ url: $(this).attr('href'), type: 'delete' });
    request.done(function () { window.location = "/"; });
  });

});
