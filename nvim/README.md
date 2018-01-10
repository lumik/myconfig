# Neovim installation


## Ubuntu

```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
git clone https://github.com/lumik/myconfig.git ~/.myconfig
ln -s /home/lumik/.myconfig/nvim/init.vim ~/.config/nvim/init.vim
```

Launch nvim and run `:PluginInstall`
