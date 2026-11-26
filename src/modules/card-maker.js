import data from "/src/example/data.json" with { type: "json" };

const cards = new DocumentFragment();
const cardContainer = document.getElementById("cards");
const template = document.getElementById("card-template");

for (let i = 0; i < data.length; i++) {
  mkCard(data[i]);
}

cardContainer.replaceChildren(cards);

function mkTemplateCard() {
  const card = template.content.cloneNode(true);
  cards.append(card);
}

function mkCard(product) {
  let card = template.content.cloneNode(true);
  card.querySelector(".product-name").textContent = product.name;

  card.querySelector(".product-image").src = product.img_path;
  card.querySelector("a").href = "/product/?id=" + product.id;

  if (product.discount_percentage) {
    card.querySelector(".discount-tag").classList.remove("invisible");
    card.querySelector(".product-price").dataset.discounted = true;
    card.querySelector(".product-price").textContent =
      "Rp. " + (product.price - product.price * product.discount_percentage).toLocaleString();
    card.querySelector(".product-original-price").textContent =
      "Rp. " + product.price.toLocaleString();
    card.querySelector(".product-discount").textContent =
      product.discount_percentage * 100 + "%";
  } else {
    card.querySelector(".product-price").textContent =
      "Rp. " + product.price.toLocaleString();
  }

  cards.append(card);
}
