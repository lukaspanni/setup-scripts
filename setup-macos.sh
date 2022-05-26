#!/bin/zsh

/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git # make sure git is available (should already be installed)

code-select --install

casks = (iterm2 docker firefox google-chrome spotify notion anki canva visual-studio-code microsoft-office android-studio intellij-idea dotnet)
formulae = (gh openjdk node sevenzip oh-my-posh)

for c in "${casks[@]}"
do
        echo "Install: " $c
        brew install --cask $c
done

for f in "${formulae[@]}"
do
        echo "Install: " $f
        brew install $f
done