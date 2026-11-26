import data from "/src/example/data.json" with { type: "json" };

const params = new URLSearchParams(window.location.search);
const productId = params.get("id");
const product = data.find((e) => e.id === productId);
const container = document.querySelector("#product-container");

if (product) {
  container.querySelector(".product-image").src = product.img_path;
  container.querySelector(".product-name").textContent = product.name;
  container.querySelector(".product-manufacturer").textContent =
    product.manufacturer;
  container.querySelector(".product-id").textContent = product.id;

  if (!product.discount_percentage)
    container.querySelector(".product-price").textContent =
      "Rp. " + product.price.toLocaleString();
  else {
    container.querySelector(".product-price").dataset.discounted = true;
    container.querySelector(".discount-tag").classList.remove("invisible");

    container.querySelector(".product-price").textContent =
      "Rp. " +
      (
        product.price -
        product.price * product.discount_percentage
      ).toLocaleString();

    container.querySelector(".product-discount").textContent =
      product.discount_percentage * 100 + "%";
    container.querySelector(".product-original-price").textContent =
      "Rp. " + product.price;
  }
}

container.classList.remove("invisible");
