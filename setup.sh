# Ensure Ubuntu is up to date
printf "\n$(tput setaf 1)Updating Ubuntu...$(tput sgr 0)\n"
sudo apt update
printf "\n"
sudo apt upgrade -y

# Install some needed tools
printf "\n$(tput setaf 1)Install Tree...$(tput sgr 0)\n"
sudo apt install tree -y
printf "\n$(tput setaf 1)Install FD...$(tput sgr 0)\n"
sudo apt install fd-find -y
printf "\n$(tput setaf 1)Install Master Commander...$(tput sgr 0)\n"
sudo apt install mc -y

sudo apt install fq -y
sudo apt install neofetch -y
sudo apt install htop -y
sudo apt install sysstat
sudo apt install net-tools -y


# Install Zsh
printf "\n$(tput setaf 1)Install Zsh...$(tput sgr 0)\n"
sudo apt install zsh -y
sudo usermod -s /usr/bin/zsh $(whoami)

# Install Antigen
printf "\n$(tput setaf 1)Install Antigen...$(tput sgr 0)\n"
curl -L git.io/antigen > ~/.antigen.zsh

# Install Nord dircolors
printf "\n$(tput setaf 1)Install dircolors...$(tput sgr 0)\n"
git clone https://github.com/seebi/dircolors-solarized ~/dircolors-solarized
cp ~/dircolors-solarized/dircolors.256dark ~/.dir_colors


# Copy zshrc and p10k.zsh
printf "\n$(tput setaf 1)Customizing...$(tput sgr 0)\n"
cp zshrc ~/.zshrc
cp p10k.zsh ~/.p10k.zsh

# Execute Zsh
printf "\n$(tput setaf 1)Launching Zsh...$(tput sgr 0)\n"
zsh


