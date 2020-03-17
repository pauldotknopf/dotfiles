function git-clean-all() {
    git clean -xfd
    git submodule foreach --recursive git clean -xfd
}