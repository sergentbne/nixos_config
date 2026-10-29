{ ... }: {
  flake.nixosModules.user = { pkgs, ... }: {
    users.users."gamer" = {
      shell = pkgs.zsh;
      isNormalUser = true;
      description = "gamer";
      initialPassword = "password";
      extraGroups = [
        "networkmanager"

        "wheel"
      ];
    };
    programs.zsh.enable = true;
  };
}
