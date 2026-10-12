# =============================================================================
# Boot and initramfs
# =============================================================================

# Kernel command-line parameters
CopyFile /etc/cmdline.d/nowatchdog.conf
CopyFile /etc/cmdline.d/quiet.conf

# Kernel preset
CopyFile /etc/mkinitcpio.d/linux-zen.preset
CopyFile /etc/mkinitcpio.d/boot_splash.bmp


# =============================================================================
# Memory
# =============================================================================

# zram configuration
CopyFile /etc/cmdline.d/zram.conf
CopyFile /etc/systemd/zram-generator.conf


# =============================================================================
# Networking
# =============================================================================

# NetworkManager DNS configuration
CopyFile /etc/NetworkManager/conf.d/dns.conf

# systemd-resolved stub resolver
CreateLink /etc/resolv.conf ../run/systemd/resolve/stub-resolv.conf


# =============================================================================
# Localization
# =============================================================================

CopyFile /etc/locale.conf
CopyFile /etc/locale.gen
CopyFile /etc/vconsole.conf

# System timezone
CreateLink /etc/localtime /usr/share/zoneinfo/Asia/Vladivostok


# =============================================================================
# System settings
# =============================================================================

# System hostname
CopyFile /etc/hostname

# sudo configuration
CopyFile /etc/sudoers.d/10-wheel 440

# systemd-tmpfiles sets the root directory mode by default anyway
SetFileProperty / mode 555

# =============================================================================
# Package management
# =============================================================================

# Pacman configuration
CopyFile /etc/pacman.conf

# makepkg configuration
CopyFile /etc/makepkg.conf


# =============================================================================
# Hardware and custom services
# =============================================================================

# Monitor brightness restoration and HDD power management
CopyFile /etc/systemd/system/ddc-restore.service
CopyFile /etc/systemd/system/hdparm.service

# udev rules
CopyFile /etc/udev/rules.d/99-gigabyte.rules
CopyFile /etc/udev/rules.d/99-hdparm.rules
CopyFile /etc/udev/rules.d/99-moza.rules


# =============================================================================
# Desktop
# =============================================================================

# greetd display manager
CopyFile /etc/greetd/config.toml
