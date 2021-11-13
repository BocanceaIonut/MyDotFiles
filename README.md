# MyDotFiles

## ----Setting up new mac STEPS----
1. Install Kitty terminal: `curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`
2. Install homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
3. Install git: `brew install git`

**NOTE: After installing git clone this repo where you want.**

## -----Setting up zsh-------
1. Install oh-my-zsh: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
2. Remove `.zshrc` and link the one from MyDotFiles with this command: `ln -s path_to_my_dot_files/.zshrc`
   - After restarting your Kitty terminal you can get this error: `no such file or directory: /your_old_path/.oh-my-zsh/oh-my-zsh.sh`. To fix this go in .zshrc and update the path.

