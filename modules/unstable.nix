{
  disabledModules = [ "system/boot/networkd.nix" ];
  imports = [
    ./networkd/unstable.nix
    ./patches.nix
  ];
}
