{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  packages = with pkgs; [ nodejs ];
  services.postgres.enable = true;

  #processes = {
  #  tailwind = {
  #    exec = "npx @tailwindcss/cli -i ./src/style/input.css -o ./src/style/tailwind.css --watch=always";
  #  };
  #};
}
