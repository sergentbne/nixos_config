{ inputs, moduleWithSystem, ... }: {

  flake.nixosModules.tailscale = moduleWithSystem (
    {
      self',
      pkgs,
    }:
    {
      perSystem = { ... }: {
        services.tailscale.enable = true;
      };
    }
  );
}
