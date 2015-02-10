$(document).ready(function () {

    $(".player").mb_YTPlayer();

});


function load_js(){ 
    $(".player").mb_YTPlayer();
        $('a[href="#search"]').on('click', function(event) {
        event.preventDefault();
        $('#search').addClass('open');
        $('#search > form > input[type="search"]').focus();
    });
    
    $('#search, #search button.close').on('click keyup', function(event) {
        if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
            $(this).removeClass('open');
        }
    });
    
    $('#non-submitting-form').submit(function(event) {
        event.preventDefault();
        return false;
    })




}

$(document).on("page:receive", load_js()  );


$(function () {
    $('a[href="#search"]').on('click', function(event) {
        event.preventDefault();
        $('#search').addClass('open');
        $('#search > form > input[type="search"]').focus();
    });
    
    $('#search, #search button.close').on('click keyup', function(event) {
        if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
            $(this).removeClass('open');
        }
    });
    
    $('#non-submitting-form').submit(function(event) {
        event.preventDefault();
        return false;
    })
});

