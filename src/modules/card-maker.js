import data from "/src/example/data.json" with { type: "json" };

const cards = new DocumentFragment();
const cardContainer = document.getElementById("cards");
const template = document.getElementById("card-template");

for (let i = 0; i < 50; i++) {
  mkCard();
}

cardContainer.replaceChildren(cards);

function mkCard() {
  const card = template.content.cloneNode(true);
  cards.append(card);
}

function mkCardWithObject(object) {
  let card = template.content.cloneNode(true);
  card.querySelector(".product-name").textContent = object.name;
  cards.append(card);
}
