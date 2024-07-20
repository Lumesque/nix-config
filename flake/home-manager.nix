{inputs, ...}: {
  flake.homeConfigurations.lumesque = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = inputs.nixpkgs {
      system = "x86_64-linux";
      config = {
        allowUnfree = true;
        cudaSupport = true;
      };
    };
    extraSpecialArgs.inputs = inputs;
    modules = [../users/lumesque];
  }
}
