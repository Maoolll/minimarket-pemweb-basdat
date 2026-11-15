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
}
