#Remove old files
rm /home/amf/.bashrc

#Make directories
mkdir /home/amf/.config /home/amf/.config/qutebrowser /home/amf/.config/sxhkd /home/amf/.config/vifm /home/amf/.config/mpd /home/amf/.config/ncmpcpp /home/amf/.config/nvim
mkdir -p /home/amf/Pictures/wallpapers
mkdir -p /home/amf/Downloads/browser

#Symbolic links
ln -s /home/amf/.dotfiles/.xinitrc /home/amf/.xinitrc
ln -s /home/amf/.dotfiles/.bashrc /home/amf/.bashrc
ln -s /home/amf/.dotfiles/.kshrc  /home/amf/.kshrc
ln -s /home/amf/.dotfiles/.profile /home/amf/.profile
ln -s /home/amf/.dotfiles/.bash_profile /home/amf/.bash_profile
ln -s /home/amf/.dotfiles/.Xmodmap /home/amf/.Xmodmap

ln -s /home/amf/.dotfiles/Programs/manq /home/amf/.local/bin/manq
ln -s /home/amf/.dotfiles/Programs/wallpaper /home/amf/.local/bin/wallpaper
ln -s /home/amf/.dotfiles/Programs/hispanize /home/amf/.local/bin/hispanize
ln -s /home/amf/.dotfiles/Programs/wificonnect /home/amf/.local/bin/wificonnect

ln -s /home/amf/.dotfiles/qutebrowser/config.py /home/amf/.config/qutebrowser/config.py
ln -s /home/amf/.dotfiles/sxhkd/sxhkdrc /home/amf/.config/sxhkd/sxhkdrc
ln -s /home/amf/.dotfiles/vifm/vifmrc /home/amf/.config/vifm/vifmrc
ln -s /home/amf/.dotfiles/vifm/colors /home/amf/.config/vifm/colors/
ln -s /home/amf/.dotfiles/nvim/* /home/amf/.config/nvim/
ln -s /home/amf/.dotfiles/mpd/mpd.conf /home/amf/.config/mpd/mpd.conf
ln -s /home/amf/.dotfiles/ncmpcpp/* /home/amf/.config/ncmpcpp/
ln -s /home/amf/.dotfiles/wallpapers/* /home/amf/Pictures/wallpapers/
