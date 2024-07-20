{pkgs, lib, ...}:
let
  homeDirectory = "/home/lumesque";
in {
  imports = [
    ../modules/terminal
    ./update.nix
  ];

  home = {
    username = "lumesque";
    inherit homeDirectory;
  };

  nix.package = pkgs.nix;
}
