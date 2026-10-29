{ self, inputs, ... }: {
  flake.nixosConfigurations.workstation = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      system
      user
      core/bootloader
      core/network
    ];
  };
}
