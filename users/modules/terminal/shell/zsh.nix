let
  fns = import ./functions.nix;
in
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    autocd = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "gitfast" "python" "vi-mode" "virtualenv" ];
      theme = "obraun";
      extraConfig = ''
      ${fns.default.up};
      '';
    };
  };
}
