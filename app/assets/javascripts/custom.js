// Displays value of rating slider for new reviews
function outputUpdate(val) {
    document.querySelector('#rating_show').data("score") = val;
}


$(document).ready(function() {

    // Parallax effect for chair index
    document.createElement("article");

    $('div[data-type="background"]').each(function() {
        var $bgobj = $(this);

        $(window).scroll(function() {
            var yPos = -($window.scrollTop() / $bgobj.data('speed'));

            var coords = '50%' + yPos + 'px';

            $bgobj.css({
                backgroundPosition: coords
            });
        });

    });

    // Star ratings
    $(".rating").html(function() {
        var num = $(this).data("score");

        $(this).append("<i class='fa fa-empty'></i>")

        for (i = 0; i < num; i++) {
            $(this).append("<i class='fa fa-star'></i>");
        }
    });



});
