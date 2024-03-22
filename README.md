# CEG 2410 dotfiles project
## install.sh
- gets username for home directory installation.
- Finds if Script is run in sudo, if not script is aborted.
- Finds if OS Has APT package manager installed, if not script is aborted.
- Runs anaconda installation.
- Installs nmap, dnsutils, anaconda prereqs, bastet, and ninvaders.
- Looks for anaconda installation file, if not downloads it.
- Gets username for home directory installation.
- Looks for AWS CLI installation file, if not downloads it.
- Installs AWS CLI.
- symbolic links git files
- symbolic links bashrc file
- symbolic links ssh files
## vundle_install.sh
- Makes vim directory
- Clones Vundle repository
- Backs up existing .vimrc file
## vimrc
- vim configuation
  - Color Scheme
  - plugin
## bashrc
## sshfiles
- authorized_keys
  - ssh public keys
- config 
  - fry.cs.wright.edu
## gitfiles
- gitconfig 
  - Added email, name, default main branch, vim editor, commit template.
- gitmessage.txt
  - git commit message template sym linked
## References
- Chat GTP
- [pattonsgirl](https://github.com/pattonsgirl/dotfiles/tree/main)
- [zachbrowne](https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c)