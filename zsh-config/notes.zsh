function sync-notes() {
  (cd ~/Boostnote && git ca -m "Syncing notes..." && git push origin master)
}