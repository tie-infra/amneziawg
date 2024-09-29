{ pkgs, ... }:
{
  config = {
    boot.kernelPatches = [
      {
        name = "amneziawg";
        patch = ../linux.patch;
      }
    ];

    # Note that we do not use overlay to avoid mass rebuild.
    systemd.package = pkgs.systemd.overrideAttrs (oldAttrs: {
      patches = oldAttrs.patches or [ ] ++ [ ../systemd.patch ];
    });
  };
}
