{ inputs, ... }: {
  flake.nixosConfigurations.workstation = inputs.nixpkgs.lib.nixosSystem { };
}
