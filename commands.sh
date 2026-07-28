
#Downloads all of the needed shit
yay -S polybar i3 kitty nvim neofetch rofi xclip scrot feh picom

#Stuff for the terminal
sudo pacman -S zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#Copy the dotfiles
cp -r ~/Downloads/i3dots-green/.config/picom ~/.config/
cp -r ~/Downloads/i3dots-green/.config/nvim ~/.config/
cp -r ~/Downloads/i3dots-green/.config/polybar/ ~/.config/
cp -r ~/Downloads/i3dots-green/.config/rofi ~/.config/
cp -r ~/Downloads/i3dots-green/.config/neofetch ~/.config
cp -r ~/Downloads/i3dots-green/.config/kitty ~/.config/
cp -r ~/Downloads/i3dots-green/.config/kitty/.zshrc ~/
cp -r ~/Downloads/i3dots-green/.config/i3 ~/.config/
sudo chmod +x ~/.config/i3/scrot.sh
sudo chmod +X ~/.config/i3/scrot1.sh
sudo chmod +x ~/.config/i3/kblayout.sh
sudo chmod +x ~/.config/i3/polr.sh
nvim --headless "+Lazy! sync" +qa

