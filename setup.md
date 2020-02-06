# Setup for a clear installation

Execute in PowerShell
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```
Restart the PC if needed
Install "Ubuntu" from Microsoft Store
Install "New Windows Terminal (Preview)" from Microsoft Store
Run bash from the Windows Terminal

Install zsh:
```
sudo apt-get update
sudo apt-get install zsh -y
chsh /bin/zsh $USER
```

Restart shell

Install oh my zsh:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install nvm and node:
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")' >> $HOME/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> $HOME/.zshrc
nvm install v10.19.0
```

Install neovim:
```
sudo apt-get install neovim -y
```

Install pure:
```
npm install --global pure-prompt
```

Install zshmarks:
```
mkdir -p ~/.oh-my-zsh/custom/plugin
cd ~/.oh-my-zsh/custom/plugin
git clone https://github.com/jocelynmallon/zshmarks.git
```

Install this dotfiles
```
git clone git@github.com:vikepic/dotfiles.git .dotfiles
cd .dotfiles
./install
```

Close and reopen the shell and you're done!
