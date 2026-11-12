{ inputs, moduleWithSystem, ... }: {

  flake.nixosModules.gnome = moduleWithSystem (
    {
      pkgs,
    }:
    {
      services.displayManager.gdm.enable = true;
      services.desktopManager.gnome.enable = true;
    }
  );
}
