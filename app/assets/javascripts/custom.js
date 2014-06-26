// Displays value of rating slider for new reviews
function outputUpdate(val) {
    document.querySelector('#rating_show').value = val;
}

// Parallax effect for chair index
$(document).ready(function() {

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

});
