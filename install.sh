# Install packages
yay -S zsh zsh-completions git tmux atuin bat git-delta alacritty ttf-iosevka-nerd fzf fd eza neovim wl-clipboard lesspipe keychain

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

git clone https://github.com/Freed-Wu/fzf-tab-source.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab-source

# stow dotfiles
for i in $(fd -t d --format '{/}'); do
	stow "$i"
done

# use zsh as default shell
sudo chsh -s $(which zsh) $USER