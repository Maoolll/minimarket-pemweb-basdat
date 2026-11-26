const container = document.querySelector("#add-to-cart");
const buyAmount = container.querySelector(".buy-amount");

container.querySelector(".decrease").addEventListener("click", () => {
  if(!parseInt(buyAmount.value, 10)) buyAmount.value = 0;

  if (buyAmount.value > 0) {
    buyAmount.value = parseInt(buyAmount.value, 10) - 1;
  }
});

container.querySelector(".increase").addEventListener("click", () => {
  if(!parseInt(buyAmount.value, 10)) buyAmount.value = 0;
  if(buyAmount.value < 0) buyAmount.value = 0;

  buyAmount.value = parseInt(buyAmount.value, 10) + 1;
});

container.addEventListener("submit", (e) => {
  e.preventDefault();
})
