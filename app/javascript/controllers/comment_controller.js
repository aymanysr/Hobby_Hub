import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comment"
export default class extends Controller {
  static targets = ["form", "comments"]
  connect() {
  }

  comment(e) {
    e.preventDefault()
    console.log('i am here')
    const url = this.formTarget.action
    console.log(url)
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.commentsTarget.innerHTML = data
      })
  }
}
