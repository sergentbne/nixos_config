{ inputs, moduleWithSystem, ... }: {
  flake.nixosModules.wezterm = moduleWithSystem (
    {
      self',
      pkgs,
    }:
    {
      programs.wezterm = {
        enable = true;
        package = self'.packages.wezterm;
      };
    }
  );
  perSystem = { pkgs, ... }: {
    packages.wezterm = inputs.wrappers.wrappers.wezterm.wrap {
      inherit pkgs;
      luaInfo =
        let
          cfgDir = ./wezterm;
        in
        {
          "wezterm.lua".path = "${cfgDir}/wezterm.lua";
          luaInfo.config_dir = "${cfgDir}";
        };
    };
  };
}
