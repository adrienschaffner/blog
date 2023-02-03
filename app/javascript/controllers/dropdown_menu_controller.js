import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets=["fa-bars", "nav-links", "big-text", "navbar", "fa-bars", "fa-xmark"]

  connect() {
    console.log("Hello from dropdown menu controller!")
    const menuHamburger = document.querySelector(".fa-bars");
    const navLinks = document.querySelector(".nav-links");
    const bigText = document.querySelector(".big-text");
    const bars = document.querySelector(".fa-bars");
    // const xmark = document.querySelector(".fa-xmark");
    // const navBarDropdown = document.querySelector(".navbar-dropdown");
    const navBar = document.querySelector(".navbar");

    menuHamburger.addEventListener('click',()=>{
      navBar.style.display = "hidden";
      // bars.style.position = "fixed";
      // bars.style.top = "3vh";
      // bars.style.right = "3vh";
      navBar.classList.toggle('navbar-dropdown');
      // navBarDropdown.classList.toggle('fa-xmark');
      // navBarDropdown.classList.toggle('"bi-x');
      navLinks.classList.toggle('mobile-menu');
      bigText.classList.toggle('mobile-menu');
      // navBar.style.display = 'none';
    })

  }
}
