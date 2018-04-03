Dotfiles that are usually located in `~` have been moved to `~/dotfiles` and symlinked to the appropriate filenames in `~`.

When first cloning this repository on a new machine, open the `makesymlinks.sh` script and ensure every file in `~/dotfiles` is in the "file" array on line 11. Then, make the script executable with `chmod +x makesymlink.sh` and run it with `./makesymlinks.sh`. This will automatically create links from the `~/dotfiles` directory to the respective dotfiles in `~`. For example, the vimrc file in `~/dotfiles` will be symlinked to `~/.vimrc`.
