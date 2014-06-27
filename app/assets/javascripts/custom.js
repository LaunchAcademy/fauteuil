// Displays value of rating slider for new reviews
function outputUpdate(val) {
    document.querySelector('#rating_show').value = val;

}
// var rating = outputUpdate(val);

$(document).ready(function() {

    // declare rating and array
    var rating;
    var array = [];

    // loop through empty array for empty stars
    for (i = 0; i < 5; i++) {
        array[i] = ("<i class='fa fa-star-o'></i>");
    }

    // return empty star array
    $(".rating").html(array);

    // on click
    $("input#slider").click(function() {

        // get rating value from slider
        rating = $(this).val();

        // loop through empty star array, to add whole stars
        // when it's a whole number
        for (i = 0; i < rating; i++) {
            array[i] = ("<i class='fa fa-star'></i>");
        }

        // return updated array
        $(".rating").html(array);

        // check if rating is half number
        if ((rating % 1) != 0) {

            // loop through array and add a half star to array (n + 1) times
            for (i = 0; i < rating + 1; i++) {
                array[i] = ("<i class='fa fa-star-half-o'></i>");
            }

            // go back and fill in all the half stars and rewrite full stars
            for (i = -1; i < rating - 1; i++) {
                array[i] = ("<i class='fa fa-star'></i>");
            }

            $(".rating").html(array);
        }

        if ((rating % 1) != 0) {
            var integer = parseFloat(rating);
            for (i = integer + 0.5; i < 5; i++) {
                array[i] = ("<i class='fa fa-star-o'></i>");
            }
            $(".rating").html(array);
        } else {
            for (i = rating; i < 5; i++) {
                array[i] = ("<i class='fa fa-star-o'></i>");
            }

            $(".rating").html(array);
        }
    });

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

});
