{pkgs, lib, inputs, ...}: {
  imports = [
    ./shell
    ./neovim
    ./nix.nix
    ./tmux.nix
  ];
}
