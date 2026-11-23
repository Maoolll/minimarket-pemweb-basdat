import { generateCategories } from "./generate-categories.js";

const label = ["Nothing", "Something"];

generateCategories(label);

const container = document.getElementById("category-list");
const buttons = container.querySelectorAll("button");

for (let i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener("click", function () {
    let activeBtn = container.querySelector("[data-active=true]");
    if ( activeBtn != null ) activeBtn.dataset.active=false;
    this.dataset.active = true;
  });
}
