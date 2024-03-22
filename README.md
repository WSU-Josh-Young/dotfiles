# CEG 2410 dotfiles project
## install.sh
- Finds if Script is run in sudo, if not script is aborted
- Finds if OS Has APT package manager installed, if not script is aborted
- Installs nmap, dnsutils, anaconda prereqs, bastet, and ninvaders.
- symbolic links git files
- symbolic links bashrc file
- symbolic links ssh files
## ana_install.sh
- gets username for home directory installation.
- Looks for anaconda installation file, if not downloads it
- Runs anaconda installation 
## aws_cli_install.sh
- Gets username for home directory installation.
- Looks for AWS CLI installation file, if not downloads it
- Installs AWS CLI
## vundle_install.sh
- Makes vim directory
- Clones Vundle repository
- Backs up existing .vimrc file