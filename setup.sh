#!/usr/bin/env bash
set -e
set -x

# Find package manager (check preferred first)
pkgmgr="$(which apt-get || which dnf || which yum)"

case "$pkgmgr" in
	*apt*)
		$pkgmgr update
		$pkgmgr install -y build-essential expect automake
		;;
	*yum)
      		$pkgmgr clean expire-cache
		$pkgmgr groupinstall -y "Development Tools"
		$pkgmgr install -y expect automake
		;;
	*dnf)
      		$pkgmgr clean expire-cache
		$pkgmgr install -y @development-tools
		$pkgmgr install -y expect automake
		;;
	*)
   		echo "No supported package manager found." >&2
		echo "Dependencies must be manually installed." >&2
		;;
esac


mkdir /opt/ltp
chown vagrant. /opt/ltp

exit 0

