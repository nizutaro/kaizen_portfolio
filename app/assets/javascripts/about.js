$(document).ready(function () {
  $("#theTarget").skippr({
    transition: "slide",
    speed: 1000,
    easing: "easeOutQuart",
    navType: "block",
    childrenElementType: "div",
    arrows: true,
    autoPlay: true,
    autoPlayDuration: 3000,
    keyboardOnAlways: true,
    hidePrevious: false,
  });
});

$(function () {
  $(".menu-trigger").on("click", function (event) {
    $(this).toggleClass("active");
    $("#sp-menu").fadeToggle();
    event.preventDefault();
  });
});
