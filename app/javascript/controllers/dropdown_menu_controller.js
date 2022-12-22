import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets=["fa-bars", "nav-links", "big-text"]

  connect() {
    console.log("Hello from dropdown menu controller!")
    const menuHamburger = document.querySelector(".fa-bars");
    const navLinks = document.querySelector(".nav-links");
    const bigText = document.querySelector(".big-text");

    menuHamburger.addEventListener('click',()=>{
      navLinks.classList.toggle('mobile-menu');
      bigText.classList.toggle('mobile-menu');
    })
  }
}
