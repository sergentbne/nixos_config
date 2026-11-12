{ inputs, moduleWithSystem, ... }: {

  flake.nixosModules.gnome = moduleWithSystem (
    {
      pkgs,
    }:
    {
      perSystem = { pkgs, ... }: {
        services.displayManager.gdm.enable = true;
        services.desktopManager.gnome.enable = true;
      };
    }
  );
}
