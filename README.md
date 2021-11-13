# MyDotFiles

## ----Setting up new mac STEPS----
1. Install Kitty terminal: `curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`
2. Install homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
3. Install git: `brew install git`

**NOTE: After installing git clone this repo where you want.**

## -----Setting up zsh-------
1. Install oh-my-zsh: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
2. Remove `.oh-my-zsh` (cd && rm -rf .oh-my-zsh), go to your dotfiles(cd path_to_dot_files), rename the `oh-my-zsh` folder to `.oh-my-zsh` rinning `mv oh-my-zsh .oh-my-zsh`, and ling the folder: `ln -s path_to_my_dot_files/.oh-my-zsh
3. Remove `.zshrc` (cd && rm -rf .zshrc) and link the one from MyDotFiles with this command: `ln -s path_to_my_dot_files/.zshrc`
   - After restarting your Kitty terminal you can get this error: `no such file or directory: /your_old_path/.oh-my-zsh/oh-my-zsh.sh`. To fix this go in .zshrc and update the path.
   - Other possible error: `plugin 'zsh-autosuggestions' not found`. Fix: `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`. Source: `https://github.com/zsh-users/zsh-autosuggestions`
   - Other posibble error: `plugin 'zsh-syntax-highlighting' not found`. Fix: `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`. Source: `https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md`    
   - Other possible error: `no such file or directory: /Users/bocancea/.oh-my-zsh/themes/powerlevel10k/powerlevel10k.zsh-theme`. Fix: `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`. Source: `https://github.com/romkatv/powerlevel10k#oh-my-zsh`

## -----Setting up tmux-------
1. Install tmux: `brew install tmux`
2. Install oh-my-tmux: `git clone https://github.com/gpakosz/.tmux.git`
3. Link tmux.conf: `cd && ln -s -f .tmux/.tmux.conf`
4. Copy tmux.conf.local: `cp path_to_my_dot_files/.tmux.conf.local .`

## -----Setting up vim-------
1. Link .vimrc: `cd && ln -s path_to_my_dot_files/.vimrc`
2. Install Vundle for plugin management: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
3. Open vim and run `:PluginInstall`





