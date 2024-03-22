
# get username that called script
echo $SUDO_USER
ME=$SUDO_USER

# check if effective user id is 0 (root)

if [[ "$(id -u)" -eq 0 ]]; then
	echo "This script is run as root."
	# check if apt is package manager
	echo $(which apt)
	if [[ -n "$(which apt)" ]]; then
		echo "apt is installed."
		echo "updating apt manager"
		apt update -y
		echo "Installing:"
		echo "nmap"
		echo "dnsutils"
		echo "anaconda prereqs"
		echo "bastet game"
		echo "ninvaders game"
		apt install -y \
			nmap \
			dnsutils \
			libgl1-mesa-glx \
			libegl1-mesa \
			libxrandr2 \
			libxss1 \
			libxcursor1 \
			libxcomposite1 \
			libasound2 \
			libxi6 \
			libxtst6 \
			bastet \
			ninvaders
		if [[ -e $(ls Anaconda3*.sh 2> /dev/null | head -1) ]]; then
			echo "Installer found, running it"
		        bash Anaconda3-2024.02-1-Linux-x86_64.sh -b -p /home/$ME/anaconda3
			echo "PATH=$PATH:/home/jyoung/anaconda3/bin" >> /home/$ME/.profile
	        else
	 		echo "downloading anaconda"		
			curl -O https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh
			bash Anaconda3-2024.02-1-Linux-x86_64.sh -b -p /home/$ME/anaconda3
			echo "PATH=$PATH:/home/jyoung/anaconda3/bin" >> /home/$ME/.profile
		fi
	else
		echo "apt is not installed."
	fi
	
	if [[ -e $(ls awsdl/awscliv2.zip 2> /dev/null | head -1) ]]; then
		echo "AWS CLI V2 installer found, running it"
		unzip awsdl/awscliv2.zip -d awsdl/
		./awsdl/aws/install 
	else
		mkdir awsdl
		curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awsdl/awscliv2.zip"
		unzip awsdl/awscliv2.zip -d awsdl/
		./awsdl/aws/install
	fi 

	# moving git files
	ln -s /home/$ME/dotfiles/gitfiles/.gitconfig /home/$ME/.gitconfig
	ln -s /home/$ME/dotfiles/gitfiles/.gitmessage.txt /home/$ME/.gitmessage.txt
	# moving bashrc
	ln -s /home/$ME/dotfiles/bashrc /home/$ME/.bashrc
	# moving ssh files
	ln -s /home/$ME/dotfiles/sshfiles/config /home/$ME/.ssh/config
	ln -s /home/$ME/dotfiles/sshfiles/authorized_keys /home/$ME/.ssh/authorized_keys
	# decided to make vim / Vundle it's own thing
	#bash vundle-install.sh
	#ln -s /home/$ME/dotfiles/vimrc /home/$ME/.vimrc
	#vim +PluginInstall +qall	
else
	echo "Script is not running as root, exiting..." 1>&2
	exit 1
fi