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

function mkCard(object) {
  let card = template.content.cloneNode(true);
  card.querySelector(".product-name").textContent = object.name;
  cards.append(card);
}
