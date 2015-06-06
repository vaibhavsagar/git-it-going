# Install jq to filter Github release data for Pandoc.
sudo apt-get -y install jq
jq --version
PANDOC_URL=`curl https://api.github.com/repos/jgm/pandoc/releases/latest | jq -r '.assets[] | .browser_download_url | select(endswith("deb"))'`
echo $PANDOC_URL
# Get the latest .deb released.
wget `curl https://api.github.com/repos/jgm/pandoc/releases/latest | jq -r '.assets[] | .browser_download_url | select(endswith("deb"))'` -O pandoc.deb
sudo dpkg -i pandoc.deb
