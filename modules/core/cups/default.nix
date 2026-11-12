{ inputs, moduleWithSystem, ... }: {

  flake.nixosModules.cups = moduleWithSystem (
    {
      pkgs,
    }:
    {
      services.printing.enable = false;
    }
  );
}
