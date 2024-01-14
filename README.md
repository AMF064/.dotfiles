# Dotfiles
Incomplete, use at your own risk!
My dotfiles for the Linux programs I use.

## Usage

```console
git clone git@github.com:AMF064/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
sudo master_install.sh && master_links.sh
```

## Activate Neovim plugins
Neovim plugins have to be reactivated when installing the dotfiles. For that, clone the [packer.nvim](https://github.com/wbthomason/packer.nvim) repository.
Then open Neovim, source the file ~/.config/nvim/lua/amf/packer.lua and run :PackerSync.
