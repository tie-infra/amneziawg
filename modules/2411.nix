{
  disabledModules = [ "system/boot/networkd.nix" ];
  imports = [
    ./networkd/2411.nix
    ./patches.nix
  ];
}
