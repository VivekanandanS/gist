# Installing nodejs using nvm


# Download script from git
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Execute script & insatall nvm
. ~/.nvm/nvm.sh

# List remote versiobn
nvm ls-remote

# Install specific version of node
nvm install v12.16.3

# Use a node version
nvm use v14.1.0
