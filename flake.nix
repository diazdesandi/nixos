{
  description = "Rene's NixOS Flake Config";

  inputs = {
    # Match stateVersion
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
  };

  outputs =
    { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.nixos-laptop = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
        ];
      };

      packages.${system}.default = self.nixosConfigurations.nixos-laptop.config.system.build.toplevel;

      checks.${system}.default = self.nixosConfigurations.nixos-laptop.config.system.build.toplevel;
    };
}
