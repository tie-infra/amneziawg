{
  disabledModules = [ "system/boot/networkd.nix" ];
  imports = [
    ./networkd/2511.nix
    ./patches.nix
  ];
}
