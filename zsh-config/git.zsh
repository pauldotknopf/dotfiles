function migrate-main-to-master() {
    git checkout -b master
    git branch -D main
    git push origin --delete main
}