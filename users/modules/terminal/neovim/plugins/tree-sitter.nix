{
  programs.nixvim.plugins = {
    treesitter = {
      enable = true;

      nixvimInjections = true;

      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
      folding = true;
    };


    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;

        # NOTE might have to set this to true
        clearOnCursorMove = false;
      };
    };

    hmts.enable = true;
  };
}
