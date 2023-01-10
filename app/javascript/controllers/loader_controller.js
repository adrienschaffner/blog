import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["loader", "title", "btn-list"]

  connect() {
    console.log("hello from loader controller ! ")
    // const loader = document.querySelector('.loader');
    // const slider = document.querySelector('.slider');
    const title = document.querySelector('.big-text');
    // const slogan = document.querySelector('.font-slogan');
    const btn = document.querySelector('.btn-list');
    // const btn_login = document.querySelector('.btn-login');
    // Event.preventDefaulft()
    var delayInMilliseconds = 2000; //1 second
    var delayInMilliseconds2100 = 2100;
    var delayInMilliseconds2400 = 2400;
    // var delayInMilliseconds2900 = 2900;

    // setTimeout(function() {
    //   //your code to be executed after 1 second
    //   window.addEventListener ("load", loader.classList.add('fondu-out'))
    // }, delayInMilliseconds2100);

    // setTimeout(function() {
    //   //your code to be executed after 1 second
    //   window.addEventListener ("load", slider.classList.add('transform-y-0'))
    // }, delayInMilliseconds);

    setTimeout(function() {
      //your code to be executed after 1 second
      window.addEventListener ("load", title.classList.add('transform-x-20'))
    }, delayInMilliseconds);

    // setTimeout(function() {
    //   //your code to be executed after 1 second
    //   window.addEventListener ("load", slogan.classList.add('transform-slogan'))
    // }, delayInMilliseconds2400);

    // setTimeout(function() {
    //   //your code to be executed after 1 second
    //   window.addEventListener ("load", slogan.classList.add('transform-y-0'))
    // }, delayInMilliseconds2400);

    // setTimeout(function() {
    //   //your code to be executed after 1 second
    //   window.addEventListener ("load", btn_login.classList.add('transform-y-20'))
    // }, delayInMilliseconds2900);

    setTimeout(function() {
      console.log("help help")
      // window.addEventListener ("load", btn.classList.add('transform-x-20'))
      window.addEventListener ("load", btn.classList.add('transform-x-20-reverse'))
    }, delayInMilliseconds2400);
  }
}
