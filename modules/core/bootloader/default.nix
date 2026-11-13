{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.bootloader =
    {
      pkgs,
      lib,
      ...
    }:
    {
      boot = {
        loader = {
          # efi = {
          #   canTouchEfiVariables = true;
          # };
          grub = {
            efiSupport = true;
            device = "nodev";
            theme = pkgs.catppuccin-grub;
            useOSProber = true;
          };
        };
        plymouth = {
          enable = true;
          theme = "catppuccin-mocha";
          themePackages = with pkgs; [
            # By default we would install all themes
            (catppuccin-plymouth.override {
              variant = "mocha";
            })
          ];
        };
        kernelPackages = pkgs.linuxPackages_latest;
      };
    };
}
