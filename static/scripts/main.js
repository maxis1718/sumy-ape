
var sumyHandler = function (e) {
	$.post('/sumy', {
		count: parseInt($('#count').val()),
		language: $('#lang').val(),
		article: $('#article').val()
	}, function(data){
		// clear content
		$('#results').html('');
		data.sentences.forEach(function(sent){
			$('<p/>').text(sent).appendTo($('#results'));
		});
		// console.log(data);
	});
}

$(document).ready(function(){
	$('#sumy-btn').on('click', sumyHandler)
});