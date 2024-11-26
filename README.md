## my nvim, zsh and tmux environment (deb)

[https://github.com/neovim/neovim/blob/master/INSTALL.md#pre-built-archives-2](https://github.com/neovim/neovim/blob/master/INSTALL.md#pre-built-archives-2)

```
sudo apt install zsh autojump zsh-autosuggestions zsh-syntax-highlighting tmux git curl xclip
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
git clone https://gitee.com/zsh-users/zsh-history-substring-search.git ~/.zsh/zsh-history-substring-search
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz --output-dir /tmp
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf /tmp/nvim-linux64.tar.gz
export PATH="$PATH:/opt/nvim-linux64/bin"
cp -r . ~
rm ~/README.md
sudo chsh -s /bin/zsh $USERNAME
# reboot
```
