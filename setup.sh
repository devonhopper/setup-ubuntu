# Get latest Ubuntu updates
sudo apt update
sudo apt upgrade -y

# Install some needed tools
sudo apt install tree -y
sudo apt install fd-find -y
sudo apt install mc -y

# Install Zsh
sudo apt install zsh -y
sudo usermod -s /usr/bin/zsh $(whoami)

# Install Antigen
curl -L git.io/antigen > ~/.antigen.zsh

# Install Nord dircolors
git clone https://github.com/arcticicestudio/nord-dircolors ~/nord-dircolors
cp ~/nord-dircolors/src/dir_colors ~/.dir_colors

# Copy zshrc and p10k.zsh
cp zshrc ~/.zshrc
cp p10k.zsh ~/.p10k.zsh

# Execute Zsh
zsh


