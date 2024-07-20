{
  imports = [
    ./zsh.nix
  ];

  home = {
    shellAliases = import ./aliases.nix;
  };

  programs = {
    zoxide = {
      enable = true;
      options = ["--cmd" "j"];
    };

    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

    fzf.enable = true;
  };
}
