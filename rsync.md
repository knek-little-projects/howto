```bash
rsync -zavh "user@server:~/path/dir/" ./backup/ --delete "$@"
rsync -zavh ./dump/ "user@server:~/dvm/rdump/" --delete "$@"
rsync -zavh --exclude rdump --exclude backup --exclude dump --exclude rsync --exclude old --exclude test "./" "user@serverr:~/dvm" --delete "$@"
```
