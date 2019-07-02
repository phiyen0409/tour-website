/*Review star*/
$(document).ready(function () {
    var stars = $('.form-comment-wrapper .review-star').find('i');
    stars.click(function () {
        $('#id-score').val($(this).index() + 1);
        // console.log($('#id-score').val());
        for (var i = 0; i <= 4; i++) {
            if (i <= $(this).index()) {
                stars.eq(i).addClass('yellow-star');
            }
            else {
                stars.eq(i).removeClass('yellow-star');
            }
        }
    });
});
$(document).ready(function () {
    $('.nav-pills').on('click', 'li', function () {
        $('.nav-pills li').removeClass('active');
        $(this).addClass('active');
    });
});
$(document).ready(function () {
    stuck = $('.tab-tour-infor').offset().top - 40;
    // console.log(stuck);
    // stuck += 100;
    // console.log(stuck);
    $(window).scroll(function () {
        if ($(window).scrollTop() >= stuck) {
            $('.tab-tour-infor').show();
            $('.tab-tour-infor').addClass('stuck');
        }
        else {
            $('.tab-tour-infor').hide();
            $('.tab-tour-infor').removeClass('stuck');
        }
    });
});
// $(document).ready(function () {
//     $('.nav-tabs').on('click', 'div', function () {
//         $('.nav-tabs div').removeClass('active');
//         $(this).addClass('active');
//     });
// });

$(document).ready(function () {
    $('.nav-tabs div').bind('click', function (e) {
        $('.nav-tabs div').removeClass('active');
        $(this).addClass('active');
        e.preventDefault(); // prevent hard jump, the default behavior

        var target = $(this).find('a').attr("href"); // Set the target as variable

        // perform animated scrolling by getting top-position of target-element and set it as scroll target
        $('html, body').stop().animate({
            scrollTop: $(target).offset().top - 40
        }, 600, function () {
            location.hash = target; //attach the hash (#jumptarget) to the pageurl
        });

        return false;
    });
});

$(window).scroll(function () {
    var scrollDistance = $(window).scrollTop() + 60;

    // Show/hide menu on scroll
    //if (scrollDistance >= 850) {
    //		$('nav').fadeIn("fast");
    //} else {
    //		$('nav').fadeOut("fast");
    //}

    // Assign active class to nav links while scolling
    $('.tour-infor-part').each(function (i) {
        if ($(this).position().top <= scrollDistance) {
            $('.nav-tabs div.active').removeClass('active');
            $('.nav-tabs div').eq(i).addClass('active');
        }
    });
}).scroll();