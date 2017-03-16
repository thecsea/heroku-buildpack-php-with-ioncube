#!/usr/bin/env bash

install_ioncube_ext() {
  local series= 
  case ${ZEND_MODULE_API_VERSION} in
  	20121212)
  		series=5.5
  		;;
  	20131226)
  		series=5.6
  		;;
  	20151012)
  		series=7.0
  		;;
  	20160303)
  		series=7.1
  		;;
  	*)
  		echo "Unsupported PHP/Zend Module API version: ${ZEND_MODULE_API_VERSION}"
  		exit 1
  		;;
  esac

  cd /tmp
  wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
  tar xvfz ioncube_loaders_lin_x86-64.tar.gz
  cp ioncube/ioncube_loader_lin_$series.so $ext_dir
  ln -s $ext_dir/ioncube_loader_lin_$series.so $ext_dir/ioncube.so
}
