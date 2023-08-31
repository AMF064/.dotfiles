# Dotfiles
Incomplete, use at your own risk!
These dotfiles are as minimalist as possible, in order to be used in any computer,
      regardless of its specs.

## Usage

      ```console
      git clone git@github.com:AMF064/.dotfiles.git ~/.dotfiles
      cd ~/.dotfiles
      sudo master_install.sh && master_links.sh
      ```
## Install Quicklisp first for Slimv
      Install Quicklisp from SBCL.

## Activate Neovim plugins
      Neovim plugins have to be reactivated when installing the dotfiles. For that, clone the [packer.nvim](https://github.com/wbthomason/packer.nvim) repository.
      Then open Neovim, give a shoutout to the file ~/.config/nvim/lua/amf/packer.lua and run :PackerSync.
