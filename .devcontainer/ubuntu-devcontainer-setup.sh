#!/bin/sh

# Helper script to setup a new development container for PulseView
# This installs all necessary dependencies to build PulseView and other
# Sigrok libraries needed by PulseView.
# It also clones the sigrok-util repo for its build script

# Install Debian/Ubuntu/Mint dependencies for:
#   libserialport
#   libsigrok
#   libsigrokdecode
#   sigrok-cli
#   PulseView
sudo apt-get update
sudo apt-get install -y autoconf autoconf-archive automake check cmake \
 default-jdk dh-autoreconf doxygen g++ gcc git-core libboost-filesystem-dev \
 libboost-serialization-dev libboost-system-dev libboost-test-dev \
 libftdi1-dev libglib2.0-dev libglibmm-2.4-dev libqt5svg5-dev libtool \
 libusb-1.0-0-dev libzip-dev make nettle-dev pkg-config python3-dev \
 python-dev python-gi-dev python-numpy python-setuptools qtbase5-dev swig

# Clone the sigrok-util repository for the cross-compile script
if [ ! -d "../sigrok-util" ]; then
    git clone --depth 1  https://github.com/sigrokproject/sigrok-util.git ../sigrok-util
fi
