$(document).ready(function () {
    $(".btn-next-slide").click(function () {
        var slideWrapper = $(this).parent().parent();
        w = '+=' + slideWrapper.width();
        slideWrapper.animate({ scrollLeft: w }, 500, 'swing');
    });
    $(".btn-pre-slide").click(function () {
        var slideWrapper = $(this).parent().parent();
        w = '-=' + slideWrapper.width();
        console.log(w);
        slideWrapper.animate({ scrollLeft: w }, 500, 'swing');
    });
});