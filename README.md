# Epic Vimrc File
The vimrc file to cure all your coding needs. This repo converts the standard vim experience into a magnificent, easy to use, and extremely rewarding one. Equipped with many features from many different text editors, this vimrc file will make the tranisition to vim so much easier. Enjoy!

## Install
To install this vimrc file, you need to have git bash installed, or some form of shell, as well as vim itself. It is recommended to use this vimrc with gVim, but it works with standard command line vim as well. Once you have this, simply type the following:

``` sh
git clone https://github.com/jmc07712/vimrc ~/.vim_runtime # This clones the repo
cd ~/.vim_runtime
chmod u+x ./install.sh
./install.sh
```

This will install vundle to your vim, which is the package manager that this vimrc file uses.
Once this has completed, you need to use Vundle to install the rest of the packages. To do this do the following:

```sh
vim ~/.vimrc # Ignore the warnings that pop up and just hit enter
```

You will get some warnings, but just ignore them by pressing enter. Once in vim, go into visual mode by hitting ESC and type:

```
:PluginInstall
```

Once this is complete, restart vim and enjoy!
