# apt.conf syntax
man /usr/share/doc/apt/examples/configure-index.gz
apt list --upgradable -o Dir::Etc::SourceList=/tmp/sources.list -o Dir::State::status=/tmp/status -o APT::Architecture=amd644 -o Dir::State::Lists=/tmp 
