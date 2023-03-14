import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["list"]
  connect() {
  }
  update(event) {
    console.log("hi")
    const cities = document.querySelectorAll("input.city")
    const categories = document.querySelectorAll("input.category")
    let citiesQuery = "";
    let catQuery = "";

    cities.forEach(city => {
      if (city.checked)
        citiesQuery += "city_ids[]=" + city.value + "&";
    })

    categories.forEach(cat => {
      if (cat.checked)
        catQuery += "category_ids[]=" + cat.value + "&";
    })

    const url = "/groups_filter?" + citiesQuery + catQuery;

    fetch(url, { headers: { "Accept": "text/plain" } })
      .then(response => response.text())
      .then((data) => {
        console.log("data", data)
        this.listTarget.outerHTML = data
      })
  }
}
