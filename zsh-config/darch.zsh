function update-dev-image() {
  # Backup our current image in case the new one is broken.
  sudo darch stage tag pauldotknopf/darch-ubuntu-development:latest pauldotknopf/darch-ubuntu-development:backup --force
  sudo darch images pull pauldotknopf/darch-ubuntu-development:latest
  sudo darch stage upload pauldotknopf/darch-ubuntu-development:latest --force
  sudo darch stage clean
}