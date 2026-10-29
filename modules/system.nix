{ ... }: {
  flake.nixosModules.system = { pkgs, ... }: {
    environment.systemPackages = [ pkgs.sl ];
    imports = [ /etc/nixos/hardware-configuration.nix ];
  };
}
