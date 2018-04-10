#!/bin/bash
# Exit script if error
set -e
sudo apt-get install -y build-essential
sudo apt-get upgrade -y
sudo apt-get install flex bison -y
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-5.0 main"
sudo apt-get update
sudo apt-get install -y clang-5.0
sudo du -sh /var/cache/apt/archives
sudo apt autoclean
sudo apt-get clean
sudo apt autoremove
sudo du -sh /var/cache/apt/archives
