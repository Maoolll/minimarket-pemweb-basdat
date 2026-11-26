import { resolve } from "node:path";
import { defineConfig } from "vite";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  input: {
    main: resolve(import.meta.dirname, "index.html"),
    product: resolve(import.meta.dirname, "product/index.html"),
  },
  plugins: [tailwindcss()],
});
