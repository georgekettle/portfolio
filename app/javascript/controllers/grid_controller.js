import { Controller } from "@hotwired/stimulus"
import Masonry from "masonry-layout"
// var elem = document.querySelector('.grid');

// Connects to data-controller="grid"
export default class extends Controller {
  connect() {
    this.msnry = new Masonry( this.element, {
      // options
      percentPosition: true,
      columnWidth: '.grid-sizer',
      itemSelector: '.grid-item'
    });
  }
}
