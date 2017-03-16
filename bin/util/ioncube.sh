#!/usr/bin/env bash

install_ioncube_ext() {
  cd /tmp
  wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
  tar xvfz ioncube_loaders_lin_x86-64.tar.gz
  cp ioncube/ioncube_loader_lin_$series.so $ext_dir
  ln -s $ext_dir/ioncube_loader_lin_$series.so $ext_dir/ioncube.so
}
