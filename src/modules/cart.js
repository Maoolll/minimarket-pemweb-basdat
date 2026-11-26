let cart = JSON.parse(localStorage.getItem("cart"));

if(!cart) {
  cart = [];
  localStorage.setItem("cart", JSON.stringify(cart));
}
