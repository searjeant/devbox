#!/usr/bin/env bash
#
# Top of script tree which installs SDKs and tools on an
# Ubuntu system.
#
# Thanks to DHH (https://dhh.dk/) for the original script tree.
# He created https://omakub.org/ which uses this technique to 
# install and configure a complete desktop and dev environment.
# I have commented-out desktop bits I don't need and moved the 
# installer scripts for things I don't want to NOT_USED subdirs.
#
# ########################################################################

# Exit immediately if a command exits with a non-zero status
set -e

# Desktop software and tweaks will only be installed if we're running Gnome
# RUNNING_GNOME=$([[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]] && echo true || echo false)

# Check the distribution name and version and abort if incompatible
source ./check-version.sh

# if $RUNNING_GNOME; then
#   # Ensure computer doesn't go to sleep or lock while installing
#   gsettings set org.gnome.desktop.screensaver lock-enabled false
#   gsettings set org.gnome.desktop.session idle-delay 0

#   echo "Get ready to make a few choices..."
#   source ~/.local/share/omakub/install/terminal/required/app-gum.sh >/dev/null
#   source ~/.local/share/omakub/install/first-run-choices.sh

#   echo "Installing terminal and desktop tools..."
# else
#   echo "Only installing terminal tools..."
# fi

# Install terminal tools
# source ~/.local/share/omakub/install/terminal.sh
source ./terminal.sh

# if $RUNNING_GNOME; then
#   # Install desktop tools and tweaks
#   source ~/.local/share/omakub/install/desktop.sh

#   # Revert to normal idle and lock settings
#   gsettings set org.gnome.desktop.screensaver lock-enabled true
#   gsettings set org.gnome.desktop.session idle-delay 300
# fi

# Install desktop tools and apps.
# I've trimmed this significantly - a lot of stuff moved to NOT_USED subdir
# but not deleted as I may use one or two someday.
source ./desktop.sh
