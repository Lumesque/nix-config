{pkgs, ...}: let
  updateScriptName = "update-home-manager";
  updateScripts = 
    pkgs.writeShellScriptBin
    updateScriptName
    ''
    set -e
    profile = "lumesque"
    flake_dir="$HOME/config"
    rm -rf $flake_dir/flake.lock

    git -C $flake_dir pull

    nix flake update $flake_dir

    home-manager switch --flake $flake_dir\#$profile -v

    # nix-collect-garbage --delete-older-than 2d
    '';
  in {
    home = {
      packages = [updateScript];
      shellAliases = {
        un = updateScriptName;
        update = "sudo nala upgrade";
      };
    };
  }
