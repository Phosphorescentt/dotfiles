eval `keychain --eval`
eval `keychain ~/.ssh/id_ed25519`

cd ~/Documents/Graphs/Zettelkasten/
git add *
git commit -m "Automatic push by cron"
git push
