import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  connect() {
    console.log("hi")
  }
  update() {
    console.log("hi")
    const url = "/groups_filter?city_ids[]=1&city_ids[]=2"
    fetch(url, { headers: { "Accept": "text/plain" } })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.listTarget.outerHTML = data
      })
  }
}
