# Ensure Ubuntu is up to date
echo "\n$(tput setaf 1)Updating Ubuntu...$(tput sgr 0)"
sudo apt update
echo "\n"
sudo apt upgrade -y

# Install some needed tools
echo "\n$(tput setaf 1)Install Tree...$(tput sgr 0)"
sudo apt install tree -y
echo "\n$(tput setaf 1)Install FD...$(tput sgr 0)"
sudo apt install fd-find -y
echo "\n$(tput setaf 1)Install Master Commander...$(tput sgr 0)"
sudo apt install mc -y

# Install Zsh
echo "\n$(tput setaf 1)Install Zsh...$(tput sgr 0)"
sudo apt install zsh -y
sudo usermod -s /usr/bin/zsh $(whoami)

# Install Antigen
echo "\n$(tput setaf 1)Install Antigen...$(tput sgr 0)"
curl -L git.io/antigen > ~/.antigen.zsh

# Install Nord dircolors
echo "\n$(tput setaf 1)Install Nord dircolors...$(tput sgr 0)"
git clone https://github.com/arcticicestudio/nord-dircolors ~/nord-dircolors
cp ~/nord-dircolors/src/dir_colors ~/.dir_colors

# Copy zshrc and p10k.zsh
echo "\n$(tput setaf 1)Customizing...$(tput sgr 0)"
cp zshrc ~/.zshrc
cp p10k.zsh ~/.p10k.zsh

# Execute Zsh
echo "\n$(tput setaf 1)Launching Zsh...$(tput sgr 0)"
zsh


