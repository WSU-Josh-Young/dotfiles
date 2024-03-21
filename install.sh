# Print the user who called the script
username=$(whoami)
echo "The user who called this script is: $username"
# Check if the script is run as root
if [[ "$(id -u)" -eq 0 ]]; then
	echo "This script is run as root."
	if [[ "$(which apt)" ]]; then
		echo "apt is installed."
		# updata apt package manager
		apt update
		# install packages with -y to automate through installations
		apt install -y \
			nmap
	else
		echo "apt is not installed." 1>&2
		exit 1
	fi
else
	echo "This script is not run as root." 1>&2
	exit 1
fi
