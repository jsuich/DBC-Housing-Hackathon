$(document).ready(function() {
  $('#submit').submit(function(event){
      event.preventDefault();

      var data = $(this).serialize();
      console.log(data);
  });
});
