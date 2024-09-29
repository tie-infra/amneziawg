# AmneziaWG patches

This project contains [AmneziaWG] patches for [Linux] and [systemd]. Unlike the
[AmneziaWG kernel module], these patches apply to the in-tree [WireGuard] module
in Linux kernel, and also provide patches that allow using AmneziaWG extensions
with [systemd-networkd].

Note that AmneziaWG implementation is derived from [AmneziaWG patches], but is
not the exact copy (e.g. unknown peer notifications are not supported).

> [!WARNING]
> Use at your own risk.

## NixOS

We also provide [NixOS] module that overrides the default systemd-networkd
module to make it easier to set up hosts with these patches applied.

> [!NOTE]
> Ideally, we’d like to leverage [Extensible Option Types] in NixOS module
> system, but NixOS currently uses non-extensible [unitOption] type for systemd
> configuration (including [networkd module]) instead of `lib.types.submodules`.
> So we vendor the updated module and disable the default one.

## License

- [NixOS] and [vendored modules](./modules/networkd) are licensed under [MIT].
- [systemd], [Linux], [WireGuard] and [AmneziaWG] are licensed under the
  [GPL-2.0].
- [linux.patch](./linux.patch) is derived from [AmneziaWG kernel module] and
  hence is distributed under the terms of [GPL-2.0].
- [systemd.patch](./systemd.patch) is in public domain, unless in conflict with
  [GPL-2.0] license.

[Linux]: https://kernel.org
[systemd]: https://systemd.io
[WireGuard]: https://wireguard.com
[AmneziaWG]: https://docs.amnezia.org/documentation/amnezia-wg
[AmneziaWG kernel module]: https://github.com/amnezia-vpn/amneziawg-linux-kernel-module
[systemd-networkd]: https://www.freedesktop.org/software/systemd/man/devel/systemd.network.html
[AmneziaWG patches]: https://github.com/amnezia-vpn/amneziawg-linux-kernel-module/tree/8d1b073205538673f5da4831c4d39ef8acf44f8c/src/patches
[GPL-2.0]: https://gnu.org/licenses/old-licenses/gpl-2.0.html
[NixOS]: https://nixos.org
[Extensible Option Types]: https://nixos.org/manual/nixos/stable/#sec-option-declarations-eot
[unitOption]: https://github.com/NixOS/nixpkgs/blob/8637e879e425363b14aa23f3ec1f69e32c9f512f/nixos/lib/systemd-unit-options.nix#L41-L50
[networkd module]: https://github.com/NixOS/nixpkgs/blob/8637e879e425363b14aa23f3ec1f69e32c9f512f/nixos/modules/system/boot/networkd.nix#L1856
[MIT]: https://opensource.org/license/MIT
