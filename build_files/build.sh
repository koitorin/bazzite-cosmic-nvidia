#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# Install Cosmic DE and related apps
dnf5 -y copr enable ryanabx/cosmic-epoch
dnf5 -y install \
        cosmic-desktop \
        cosmic-edit \
        cosmic-player \
        cosmic-store
dnf5 -y copr disable ryanabx/cosmic-epoch

# Install additional cosmic applets
dnf5 -y copr enable wiiznokes/cosmic-applets-unofficial
dnf5 -y install cosmic-ext-applet-clipboard-manager \
                cosmic-ext-applet-external-monitor-brightness
dnf5 -y copr disable wiiznokes/cosmic-applets-unofficial

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
