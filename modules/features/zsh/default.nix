{
  inputs,
  moduleWithSystem,
  ...
}:
{
  flake.nixosModules.zsh = moduleWithSystem (
    {
      pkgs,
      self',
      ...
    }:
    {
      nixpkgs.overlays = [
        (final: prev: {
          zsh = self'.packages.zsh;
        })
      ];
      programs.zsh = {
        enable = true;
        enableCompletion = true;
        enableBashCompletion = true;
        autosuggestions.enable = true;
        syntaxHighlighting.enable = true;
        histSize = 10000;
      };
      users.defaultUserShell = pkgs.zsh;
    }
  );
  perSystem =
    {
      pkgs,
      self',
      lib,
      inputs',
      ...
    }:
    {
      packages = {
        zsh = inputs.wrappers.wrappers.zsh.wrap {
          inherit pkgs;
          runtimePkgs = [
            pkgs.fzf
          ];
          zshAliases = {
            lg = lib.getExe pkgs.lazygit;
            # man = "man -P \"${lib.getExe pkgs.bat} -p\"";
            cat = lib.getExe pkgs.bat;
            ls = lib.getExe pkgs.eza;
            vim = lib.getExe inputs'.serges_nvim.packages.nvim;
            vi = lib.getExe inputs'.serges_nvim.packages.nvim;
            df = lib.getExe pkgs.duf;
            tree = "${lib.getExe pkgs.eza} --tree";
            # sometime a pain, so I commented it out
            # s docker= lib.getExe pkgs.podman;
            imgcat = "${lib.getExe pkgs.wezterm} imgcat";
            top = lib.getExe pkgs.btop;
            htop = lib.getExe pkgs.btop;
            # music= lib.getExe spotify_player;
            lgit = lib.getExe pkgs.lazygit;
            nsh = "${lib.getExe pkgs.nix} shell";
            nosleep = "${lib.getExe pkgs.nix} run github:ilyasturki/nosleep";

          };
          zdotdir = ./zdotdir;
          ohMyPosh = inputs.wrappers.wrappers.oh-my-posh.wrap {
            inherit pkgs;
            configFile = ./oh-my-posh/catppuccin_macchiato.json;
          };
        };
      };
    };
}
