# Needed for all installers
# sudo apt update -y
# sudo apt upgrade -y
sudo apt install -y curl git unzip

# Run terminal installers
# for installer in ./terminal/*.sh; do source $installer; done

# NOTE that the order in which these installers run is determined
# by the directory list - be careful if there are dependencies

for installer in ./terminal/*.sh; do 
    echo "Installing" $installer
    # source $installer; 
done
