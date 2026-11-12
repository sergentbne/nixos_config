{ inputs, moduleWithSystem, ... }: {

  flake.nixosModules.tailscale = moduleWithSystem (
    {
      self',
      pkgs,
    }:
    {
      services.tailscale.enable = true;
    }
  );
}
