#!/bin/sh

pushd ~/.dotfiles
home-manager switch -f ./users/jim/home.nix
popd

