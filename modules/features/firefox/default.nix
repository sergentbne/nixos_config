{ inputs, moduleWithSystem, ... }: {

  flake.nixosModules.firefox = moduleWithSystem (
    {
      pkgs,
    }:
    {
      programs.firefox.enable = true;
    }
  );
}
