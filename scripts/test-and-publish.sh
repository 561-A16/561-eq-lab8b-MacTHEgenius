#!bin/bash

set -e

# Restore appweb and appweb.unittests packages
#dotnet restore
#dotnet test appweb.unittests

# Publish app
dotnet publish appweb -o /root/publish
