#!/bin/sh

export ANSIBLE_TIMEOUT=120
export VAGRANT_USE_VAGRANT_TRIGGERS=true
vagrant up --no-provision "${@}" \
    && vagrant provision

if [ $? -eq 0 ] && [[ "x$(vagrant plugin list | grep sahara)" != "x" ]]; then
  vagrant sandbox on
fi
