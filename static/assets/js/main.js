/* ------------------------------------------------------------
* Template Name    : CryptoNex - Crypto Landing Page Template
* Author           : WebFolio
* Version          : 1.0
------------------------------------------------------------ */

(function ($) {
  "use strict";

  $(window).on("load", function () {
    $(".preloader").fadeOut("slow");
  });

  $(window).scroll(function () {
    if ($(window).scrollTop() >= 5) $("header").addClass("sticky");
    else $("header").removeClass("sticky");

    if ($(window).scrollTop() >= 100) $("#scroll-top").addClass("active");
    else $("#scroll-top").removeClass("active");
  });

  $(".navbar .nav-link").on("click", function () {
    $(".navbar-collapse").collapse("hide");
  });

  $("#scroll-top").click(function () {
    $("html, body").animate({ scrollTop: 0 }, 1000);
  });

  $(".partner-slider").owlCarousel({
    loop: true,
    margin: 10,
    nav: false,
    dots: false,
    autoplay: true,
    responsiveClass: true,
    responsive: {
      0: { items: 1 },
      576: { items: 2 },
      768: { items: 3 },
      1200: { items: 4 },
    },
  });

  $(".process-slider").owlCarousel({
    loop: true,
    margin: 10,
    nav: false,
    dots: false,
    autoplay: true,
    autoplayTimeout: 7000,
    smartSpeed: 1000,
    responsiveClass: true,
    responsive: {
      0: { items: 1 },
      576: { items: 2 },
      992: { items: 3 },
    },
  });

  $(".testimonial-slider").owlCarousel({
    loop: true,
    margin: 10,
    nav: false,
    dots: false,
    autoplay: true,
    responsiveClass: true,
    responsive: {
      0: { items: 1 },
      768: { items: 2 },
    },
  });

  $(".play-button").magnificPopup({ type: "iframe" });

  AOS.init({ once: true, duration: 1000 });
})(jQuery);

// Ajax mail js
$(function () {
  // Get the form.
  var form = $("#contact-form");

  // Get the messages div.
  var formMessages = $(".form-message");

  // Set up an event listener for the contact form.
  $(form).submit(function (e) {
    // Stop the browser from submitting the form.
    e.preventDefault();

    // Serialize the form data.
    var formData = $(form).serialize();

    // Submit the form using AJAX.
    $.ajax({
      type: "POST",
      url: $(form).attr("action"),
      data: formData,
    })
      .done(function (response) {
        // Make sure that the formMessages div has the 'text-success' class.
        $(formMessages).removeClass("text-danger");
        $(formMessages).addClass("text-success");

        // Set the message text.
        $(formMessages).text(response);

        // Clear the form.
        $("#contact-form input,#contact-form textarea").val("");
      })
      .fail(function (data) {
        // Make sure that the formMessages div has the 'text-danger' class.
        $(formMessages).removeClass("text-success");
        $(formMessages).addClass("text-danger");

        // Set the message text.
        if (data.responseText !== "") {
          $(formMessages).text(data.responseText);
        } else {
          $(formMessages).text("Oops! An error occured and your message could not be sent.");
        }
      });
  });
});
