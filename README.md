# DOTFILES

Dotfiles are those who we use to configure our computers, which looks like .bashrc and .zshrc

## ZSH

I'm using zsh due to prefference, I only needed to install it by:
- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- `sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"`

## NeoVim

To install and configure NeoVIM it was needed the following:

- Download [nvim.deb](https://github.com/neovim/neovim) from the releases and then `sudo apt install ./nvim-linux64.deb`
- Installing the [minimal plugin](https://github.com/junegunn/vim-plug) handler for vim: `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \\n       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
- Install the fuzzy file finder, `sudo apt install fzf`
- Install the clipboard provider for vim `sudo apt install xclip`
- Need to have yarn installed.
- run this link `sudo ln -s /usr/bin/nvim /usr/bin/vim`
- set the config here: `~/.config/nvim/init.vim`
- then you run `vim +PlugInstall` `vim +GoInstallBinaries`

### other infos:

- updating your go : https://github.com/udhos/update-golang
- reset my mouse settings: https://github.com/paulrichards321/resetmsmice
