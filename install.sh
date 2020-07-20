#!/bin/sh
# SCRIPT: install.sh
# PURPOSE: Install IMAP Sync cPanel UI
# AUTHOR: Mark Muyskens <me@markmuyskens.com>
#
echo "Installing IMAP Sync UI"
mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/loop9_imapsync
wget https://github.com/mmuyskens/cPanel-IMAP-Sync-UI/raw/master/loop9_imapsync.tar.gz
tar xzf loop9_imapsync.tar.gz
mv /root/loop9_imapsync /usr/local/cpanel/base/frontend/paper_lantern/
mv /root/loop9_imapsync.tar.gz /usr/local/cpanel/base/frontend/paper_lantern/loop9_imapsync/
chown -R root:root /usr/local/cpanel/base/frontend/paper_lantern/loop9_imapsync/
chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/loop9_imapsync/
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/loop9_imapsync/loop9_imapsync.tar.gz
echo "Installation is complete!"
