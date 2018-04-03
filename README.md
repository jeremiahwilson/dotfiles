Dotfiles that are usually located in ~ have been moved to ~/dotfiles. 

The files in ~/dotfiles are the ones that should be edited.

When first using this setup, open the makesymlinks.sh script and ensure every file in ~/dotfiles is in the "file" array on line 11. Then make the script executable with chmods -x makesymlink.sh and run it with ./makesymlinks.sh. This will create links from the home directory to our files in ~/dotfiles. For example, the vimrc file in ~/dotfiles will be symlinked to ~/.vimrc.


