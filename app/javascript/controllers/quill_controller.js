import { Controller } from "@hotwired/stimulus"
import Quill from 'quill'

export default class extends Controller {
  static targets = [ "editor", "input" ]

  initialize() {
    const editor = new Quill(this.editorTarget, {
      theme: 'snow' // You can customize the theme here
    });

    editor.on('text-change', () => {
      this.inputTarget.value = editor.root.innerHTML;
      console.log(this.inputTarget.value);
    });
  }
}