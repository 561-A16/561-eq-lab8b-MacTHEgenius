#!bin/bash

set -ev

# Restore appweb and appweb.unittests packages
dotnet restore
dotnet test appweb.unittests

# Remove old publish directory
rm -rf $HOME/publish/*

# Publish app
dotnet publish appweb -o $HOME/publish -c release
