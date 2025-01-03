# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run desktop installers
for installer in ./desktop/*.sh; do 
    echo "----------------------------------"
    echo "Installing" $installer
    echo "----------------------------------"
    source $installer; 
done

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

# Logout to pickup changes
# gum confirm "Ready to reboot for all settings to take effect?" && sudo reboot
echo " "
echo "***** Restart for all settings to take effect *****"
echo " "
