$(document).ready(function() {
  $('#submit').submit(function(event){
      event.preventDefault();

      var data = $(this).serialize();
      console.log(data);
      $.post('/send_tweet', data, function(success){
          $('#submit').append('<p> It is because of the way that it is!</p>');
      });
  });
});

