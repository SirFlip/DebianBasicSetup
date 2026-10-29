# DebianBasicSetup
Basic setup for my VMs and Raspberry Pis (Debian 12/13, Raspberry Pi OS).

## Usage
```bash
git clone <repo> && cd DebianBasicSetup
sudo ./install
```
The script asks before every step and can be run again safely.

## What it does
- **IP-issue-screen:** adds `/etc/issue.d/ip.issue`, which lets agetty show the current
  IPv4 address on the console login screen (`\4`). agetty updates it on network changes.
- **Dynamic motd:** replaces `/etc/update-motd.d/` with a header, system info and pending
  (security) updates, and sets `PrintMotd no` / `PrintLastLog yes` via
  `/etc/ssh/sshd_config.d/10-motd.conf`.
- **.bashrc:** links `templates/.bashrc` into root's home (and optionally the sudo user's).
  The old file is kept as `.bashrc_bck`. Keep the repository in place, since it is a symlink.
- **Tools:** htop, nload, iotop, curl, iftop, tree, ncdu, glances, bind9-dnsutils, net-tools
  and open-vm-tools (only on VMware).

Based on:
- http://offbytwo.com/2008/05/09/show-ip-address-of-vm-as-console-pre-login-message.html
- https://nickcharlton.net/posts/debian-ubuntu-dynamic-motd.html
