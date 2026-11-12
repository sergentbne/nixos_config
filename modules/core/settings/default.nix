{ inputs, moduleWithSystem, ... }: {

  flake.nixosModules.settings = moduleWithSystem (
    {
      pkgs,
    }:
    {
      nix.settings.auto-optimise-store = true;
    }
  );
}
