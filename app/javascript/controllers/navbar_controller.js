import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    // toggle bg-white class on this.element on scroll
    window.addEventListener('scroll', () => {
      if (window.scrollY > 10) {
        this.element.classList.add('bg-white', 'shadow', 'border-b', 'border-gray-300', 'py-2')
      } else {
        this.element.classList.remove('bg-white', 'shadow', 'border-b', 'border-gray-300', 'py-2')
      }
    })
  }
}
