import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show"
export default class extends Controller {
  static targets =["postt"]
  connect() {
  }
  show(event) {
    event.preventDefault()
    event.stopPropagation()
    console.log(event.target.innerHTML );
    if (event.target.innerHTML == "&lt; Show Less") {
      event.target.innerHTML = "Show More &gt;"
      this.posttTarget.style.maxHeight = "77px";
      this.posttTarget.style.height = "77px";
    } else {
      event.target.innerHTML = "&lt; Show Less"
      this.posttTarget.style.maxHeight = "fit-content";
      this.posttTarget.style.height = "fit-content";

    }
    // event.target.innerHTML = "Show Less"
  //  this.posttTarget.classList.add("postt-container-open")
  //  this.posttTarget.classList.remove("postt-container")

  }
}
