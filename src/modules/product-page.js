import data from "/src/example/data.json" with { type: "json" };

const params = new URLSearchParams(window.location.search);
const productId = params.get("id");
const product = getProductInfo(data, productId);

console.log(productId);
console.log(product.name);

function getProductInfo(array, id) {
  for (let i = 0; i < array.length; i++) {
    if (array[i].id == id) return array[i];
  }
}
