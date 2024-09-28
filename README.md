# AmneziaWG patches

This project contains [AmneziaWG] patches for [Linux] and [systemd]. Unlike the
[AmneziaWG kernel module], these patches apply to the in-tree [WireGuard] module
in Linux kernel, and also provide patches that allow using AmneziaWG extensions
with [systemd-networkd].

Note that AmneziaWG implementation is derived from [AmneziaWG patches], but is
not the exact copy (e.g. unknown peer notifications are not supported).

> [!CAUTION]
> Use at your own risk.

# License

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
