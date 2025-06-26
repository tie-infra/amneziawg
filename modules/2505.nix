{
  disabledModules = [ "system/boot/networkd.nix" ];
  imports = [
    ./networkd/2505.nix
    ./patches.nix
  ];
}
