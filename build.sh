#!/usr/bin/env sh
REPO="$PWD/rocm.db.tar.zst"

set -e
cd "$1" || exit 1
pacman -Sy
yes | sudo -Eu builduser makepkg -sc --noconfirm
PACKAGES="$(sudo -Eu builduser makepkg --packagelist)"

echo
echo "==> Running namcap on $1"
eval namcap PKGBUILD "$PACKAGES"
echo

eval repo-add "$REPO" "$PACKAGES"
pacman -Rcs $(pacman -Qtqd) --noconfirm
