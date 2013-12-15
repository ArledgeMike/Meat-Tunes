$(document).ready(function(event){
	var audioSection = $('#section#audio');
  $('.html5').click(function(event){
    var source = $(this).attr('href');
    $('audio').attr('src', source);
	
	
    event.preventDefault();
  
  });
});
