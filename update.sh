echo "Fetch APT updates"
echo "================="
apt update
echo "\nInstall APT updates"
echo "==================="
apt upgrade -y


if command -v flatpak >/dev/null 2>&1; then
  echo "\nInstall FLATPAK updates"
  echo "======================="
  flatpak upgrade -y
fi

if command -v snap >/dev/null 2>&1; then
  echo "\nInstall SNAP updates"
  echo "======================="
  snap refresh
fi
