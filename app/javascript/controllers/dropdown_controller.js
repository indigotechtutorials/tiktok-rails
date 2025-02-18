import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["menu"]

  toggle(e) {
    e.preventDefault()
    this.menuTarget.classList.toggle("hidden")
  }
}
