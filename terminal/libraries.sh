# General pre-req libs.
# Lib sections inserted below for specific langs or tools may duplicate
# libs - this is usually harmless 
sudo apt install -y \
  build-essential pkg-config autoconf bison clang \
  libssl-dev openssl

# Pre-reqs for Erlang - make sure these are in place BEFORE calling asdf install.
# See: https://github.com/asdf-vm/asdf-erlang?tab=readme-ov-file#before-asdf-install
# Don't include openjdk. By the time this runs, devbox will already have installed
# a JDK. 
#
sudo apt-get install -y \
                build-essential \
                autoconf m4 \
                libncurses5-dev \
                libwxgtk3.2-dev \
                libwxgtk-webview3.2-dev \
                libgl1-mesa-dev \
                libglu1-mesa-dev \
                libpng-dev \
                libssh-dev \
                unixodbc-dev \
                xsltproc fop \
                libxml2-utils \
                libncurses-dev #\
                #openjdk-11-jdk
  
  # I just don't know that I need all of these myself yet. Comment out for now.
  #
  # rustc \
  # libssl-dev libreadline-dev zlib1g-dev libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev libjemalloc2 \
  # libvips imagemagick libmagickwand-dev mupdf mupdf-tools gir1.2-gtop-2.0 gir1.2-clutter-1.0 \
  # redis-tools sqlite3 libsqlite3-0 libmysqlclient-dev libpq-dev postgresql-client postgresql-client-common
