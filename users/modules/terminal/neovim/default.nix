{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./opts.nix
    ./plugins
  ];

  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
}
