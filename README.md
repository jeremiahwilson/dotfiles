# Managing dotfiles
Files in the .dotfiles/ directory should match the file structure of your home directory.

So to stow ~/.zshrc, you put .zshrc in /.dotfiles/.zshrc
To stow ~/.config/nvim, you put the files in /.dotfiles/.config/nvim

Any time you add a new file to .dotfiles/, you need to run stow . from within .dotfiles/
When you do that, you'll need to delete or rename the original file in your home directory, or else it will conflict with the symlink stow creates


