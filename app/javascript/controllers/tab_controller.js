import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab"
export default class extends Controller {
  static targets = ["link", "content"]

  connect() {

  }

  change(event) {
    event.preventDefault()
    document.querySelectorAll("ul.tabs-underlined a").forEach((link)=> {
      link.classList.remove("active");
    })

    event.target.classList.add("active")

    document.getElementById("events").classList.remove("active")
    document.getElementById("discussions").classList.remove("active")
    document.getElementById("plus").classList.remove("active")
    document.getElementById("about").classList.remove("active")



    document.getElementById(event.target.dataset.tab).classList.add("active")
  }

}
