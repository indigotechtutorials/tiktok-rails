import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="feed"
export default class extends Controller {
  scroll(e) {
    let exactScrollHeight = this.element.scrollTop + this.element.offsetHeight
    if (exactScrollHeight >= this.element.scrollHeight) {
      location.reload()
    }
  }
}
