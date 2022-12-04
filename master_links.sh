
#Make directories
mkdir /home/amf/.config /home/amf/.config/qutebrowser /home/amf/.config/sxhkd /home/amf/.config/vifm
mkdir -p /home/amf/Pictures/wallpapers

#Symbolic links
ln -s /home/amf/.dotfiles/.xinitrc /home/amf/.xinitrc
ln -s /home/amf/.dotfiles/.bashrc /home/amf/.bashrc

ln -s /home/amf/.dotfiles/Programs/manq /usr/local/bin/manq
ln -s /home/amf/.dotfiles/Programs/fileman /usr/local/bin/fileman
ln -s /home/amf/.dotfiles/Programs/wallpaper /usr/local/bin/wallpaper

ln -s /home/amf/.dotfiles/qutebrowser/config.py /home/amf/.config/qutebrowser/config.py
ln -s /home/amf/.dotfiles/sxhkd/sxhkdrc /home/amf/.config/sxhkd/sxhkdrc
ln -s /home/amf/.dotfiles/vifm/vifmrc /home/amf/.config/vifm/vifmrc
ln -s /home/amf/.dotfiles/vim/.vimrc /home/amf/.vimrc
ln -s /home/amf/.dotfiles/wallpapers/* /home/amf/Pictures/wallpapers/
