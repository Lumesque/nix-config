{
  imports = [
    ./harpoon.nix
    ./lsp.nix
    ./lualine.nix
    ./markdown-preview.nix
    ./tagbar.nix
    ./telescope.nix
    ./tree-sitter.nix
  ];
  programs.nixvim = {
    colorschemes.gruvbox.enable = true;

    # Use this to build default plugins either only in nixpkgs, or build then using
    # utils if need to make own package (pkgs.vimUtils.buildVimPackage or smthing)
    extraPlugins = [];

    plugins = {
      nvim-autopairs.enable = true;

      nvim-colorizer = {
        enable = true;
      };

      trim = {
        enable = true;
        settings = {
          highlight = true;
          ft_blocklist = [
            "checkhealth";
            "floaterm"
            "lspinfo"
            "neo-tree"
            "TelescopePrompt"
          ];
        };
      };
    };
  };
}
