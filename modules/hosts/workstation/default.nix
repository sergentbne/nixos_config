{ self, inputs, ... }: {
  flake.nixosConfigurations.workstation = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      system
      user
      bootloader
      network
      wezterm
      # gnome
      # tailscale
    ];
  };
}
