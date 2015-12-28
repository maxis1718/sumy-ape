
var scrollTopOffset = 0;
var sumyHandler = function (e) {
    // start spinner
    $('.spinner').toggleClass('op-0');
    // clear content
    $('#results').html('');
    $.post('/sumy', {
        count: parseInt($('#count').val()),
        language: $('#lang').val(),
        article: $('#article').val()
    }, function(data){
        $('.spinner').toggleClass('op-0');
        data.sentences.forEach(function(sent){
            $('<p/>').text(sent).appendTo($('#results'));
        });
        scrollTopOffset = $('.sumy-wrap').offset().top - 24;
        $('body').stop().animate({scrollTop:scrollTopOffset}, 500, 'swing', function() { 
            // finish animation
        });
    });
}

$(document).ready(function(){
    $('.sumy-wrap').on('click', sumyHandler);
});
