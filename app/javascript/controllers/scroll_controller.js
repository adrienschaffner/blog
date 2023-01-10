import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["reveal"]

  connect() {
    console.log("Hello from scroll controller !")
    document.querySelectorAll('[class*="reveal-"]').forEach(function(r) {
      observer.observe(r)
    })
  }
}
const ratio = .2
const options = {
  root: null,
  rootMargin: '0px',
  threshold: ratio
}

const handleIntersect = function(entries, observer ) {
  entries.forEach(function(entry) {
    console.log(entry.intersectionRatio);
      if (entry.intersectionRatio > ratio) {
        entry.target.classList.add('reveal-visible')
        observer.unobserve(entry.target)
      }
  });
}
const observer = new IntersectionObserver(handleIntersect, options)
