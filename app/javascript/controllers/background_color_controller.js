import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets=["arrow-container"]

  connect() {
    console.log("hello from background-color-controller!")

    const scroll = window.scrollTo(0)
    // data-background-color-target = "arrow-container"

    // this.element.textContent = "Hello World!"

    // const tl = gsap.timeline({ defaults: { ease: "power1.out" } });

    // tl.to(".text", { y: "0%", duration: 1, stagger: 0.25 });
    // tl.to(".slider", { y: "-100%", duration: 1.5, delay: 0.5 });
    // tl.to(".intro", { y: "-100%", duration: 1 }, "-=1");
    // tl.fromTo("nav", { opacity: 0 }, { opacity: 1, duration: 1 });
    // tl.fromTo(".big-text", { opacity: 0 }, { opacity: 1, duration: 1 }, "-=1");
  }
}

// $(window).scroll(function() {

//   // selectors
//   var $window = $(window),
//       $body = $('body'),
//       $panel = $('.panel');

//   // Change 33% earlier than scroll position so colour is there when you arrive.
//   var scroll = $window.scrollTop() + ($window.height() / 3);

//   $panel.each(function () {
//     var $this = $(this);

//     // if position is within range of this panel.
//     // So position of (position of top of div <= scroll position) && (position of bottom of div > scroll position).
//     // Remember we set the scroll to 33% earlier in scroll var.
//     if ($this.position().top <= scroll && $this.position().top + $this.height() > scroll) {

//       // Remove all classes on body with color-
//       $body.removeClass(function (index, css) {
//         return (css.match (/(^|\s)color-\S+/g) || []).join(' ');
//       });

//       // Add class of currently active div
//       $body.addClass('color-' + $(this).data('color'));
//     }
//   });

// }).scroll();
