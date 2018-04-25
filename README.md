**To set up dotfiles folder on a new machine:**
1. Open `makesymlinks.sh` and change the three variables at the top: 
    - `dir` should be the directory that the script is in. This is where you will keep all of the "dot" files. 
    - `olddir` is where the dotfiles you already have will be moved to, so you still have them if something goes wrong. This directory will be created if it doesn't already exist.
    - `files` is a list of all the dotfiles you want to keep in this repository with the leading `.`'s removed.  
2. Make the script executable with `chmod +x makesymlinks.sh`.
3. Run the script with `./makesymlinks.sh`.
4. You can now update the "dot" files in whatever directory you assigned to `dir` rather than updating the dotfiles in `~`.

