git clone --depth 1 https://github.com/ilham25/dotfiles-openbox

pushd dotfiles-openbox/ && \
  bash -c 'cp -v -r {.*,*} ~/' && \
popd

rm ~/README.md && rm ~/LICENSE && rm -rf ~/.git

cd ~/.icons/

tar -Jxvf oomox-aesthetic-light.tar.xz && tar -Jxvf oomox-aesthetic-dark.tar.xz

sudo cp -r {oomox-aesthetic-light,oomox-aesthetic-dark} /usr/share/icons/

rm -r ~/.icons/{oomox-aesthetic-light,oomox-aesthetic-dark,*.tar.xz} # Delete unnecessary files

fc-cache -rv

sudo gpasswd -a $USER video

sudo systemctl enable bluetooth

sudo reboot --reboot -f
#This bash script reboots your system at the end of its installation, make sure to always close and save all applications beforehand, i am not responsible for any lost data.
