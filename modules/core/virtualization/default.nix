{ ... }: {
  virtualisation.vmVariant = {
    # the following configuration is added only when building VM with `build-vm`
    virtualisation = {
      memorySize = 2048; # use 2048MiB memory
      cores = 3; # use 3 cpu cores
    };
  };

}
