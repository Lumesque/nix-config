{inputs, ...}: {
  flake.nixosConfigurations = 
  let
    mkHost = hostname:
      inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs.inputs = inputs;
        modules = [
          ../nixos/${hostname}

          inputs.home-manager.nixosModules.home-manager {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.lumesque.imports = [../home/hosts/${hostname}];
              extraSpecialArgs.inputs = inputs;
            };
          };
        ];
      };
  in
    {
      # TODO DO THIS FOR MAKING A HOSTNAME
    }
}
