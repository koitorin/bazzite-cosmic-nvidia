# bazzite-cosmic-nvidia

This image is `bazzite-gnome-nvidia` image with Cosmic DE from the [COPR](https://copr.fedorainfracloud.org/coprs/ryanabx/cosmic-epoch/) and nothing more added.

# Rebase from bazzite-gnome* or any Silverblue based image

```rpm-ostree rebase ostree-unverified-registry:ghcr.io/koitorin/bazzite-cosmic-nvidia:latest```

## Rebase to the signed image

```rpm-ostree rebase ostree-image-signed:docker://ghcr.io/koitorin/bazzite-cosmic-nvidia:latest```
