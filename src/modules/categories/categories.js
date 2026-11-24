import { generateCategories } from "./generate-categories.js";

const label = ["Nothing", "Something", "Snack", "Snack", "Snack"];

generateCategories(label);

const container = document.getElementById("category-list");
container.querySelector("button").dataset.active = true;

container.addEventListener("click", function (evt) {
  const button = evt.target.closest("button");
  if (button == null) return;
  container.querySelector("[data-active=true]")?.setAttribute("data-active", false);
  button.setAttribute("data-active", "true");
});
