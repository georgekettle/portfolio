import { Controller } from "@hotwired/stimulus"
import Quill from 'quill'

export default class extends Controller {
  initialize() {
    const element = this.element;
    const editor = new Quill(element, {
      theme: 'snow' // You can customize the theme here
    });

    editor.on('text-change', () => {
      element.value = editor.root.innerHTML;
    });
  }
}