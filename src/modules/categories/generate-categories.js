export function generateCategories(array) {
  const template = document.getElementById("category-template");
  const container = document.getElementById("category-list");
  const fragment = new DocumentFragment();

  for (let i = 0; i < array.length; i++) {
      fragment.append(mkCategoryButton(array[i]));
  }

  container.replaceChildren(fragment);

  function mkCategoryButton(label) {
    let cat = template.content.cloneNode(true);
    cat.querySelector("button").textContent = label;
    return cat;
  }
}
