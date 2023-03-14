import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="post"
export default class extends Controller {
  static targets = ['posts', "form"]
  connect() {
  }

  post(e) {
    e.preventDefault()
    console.log('i am here')
    const url = this.formTarget.action
    console.log(url)
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)})
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.postsTarget.innerHTML = data
      
      })  
  }
}
