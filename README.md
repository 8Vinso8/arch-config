# Arch Linux Configuration

Personal Arch Linux configuration managed with [aconfmgr](https://github.com/CyberShadow/aconfmgr).

This repository describes my installed packages and selected system configuration files. It is intended primarily for restoring my own system, not as a universal Arch Linux installer.

## Repository Structure

- `10-ignores.sh` — paths and system state excluded from configuration management.
- `20-packages.sh` — explicitly installed packages, including AUR packages.
- `30-system.sh` — managed system configuration files.
- `files/` — copies of files referenced by `CopyFile` commands.

## Restoring the System

### 1. Install a minimal Arch Linux system

Install Arch Linux and make sure the system boots successfully.

Configure the following manually:

- Disk partitioning and filesystems.
- `/etc/fstab`.
- Bootloader and EFI System Partition.
- Root filesystem kernel parameters in `/etc/cmdline.d/root.conf`.

These are intentionally excluded from this repository because they depend on the installation and its filesystem UUIDs.

Create the intended user account and configure `sudo` before proceeding.

### 2. Install Git, an AUR helper, and aconfmgr

```bash
sudo pacman -S --needed git base-devel

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

yay -S --needed aconfmgr-git
```

### 3. Clone this repository

```bash
git clone https://github.com/8Vinso8/arch-config.git ~/.config/aconfmgr
cd ~/.config/aconfmgr
```

### 4. Review and apply the configuration

Before applying, check machine-specific settings, including:

- Hostname and timezone.
- Usernames and absolute paths in service files.
- HDD identification and udev rules.
- The `linux-zen` UKI preset and boot splash image path.
- The managed `sudoers` file.

Check the configuration, then review and apply the proposed changes:

```bash
aconfmgr check
aconfmgr --aur-helper yay --paranoid apply
```

Review the changes carefully before confirming them. `aconfmgr apply` can install packages, change system files, and remove packages that are no longer part of the declared configuration.

### 5. Finish system setup

Ensure that the required root kernel parameters are correct, the EFI System Partition is mounted at `/efi`, and the boot splash image is available at the path referenced by the UKI preset.

Rebuild the UKI:

```bash
sudo mkinitcpio -P
```

Enable the services used to restore HDD settings and monitor brightness after sleep:

```bash
sudo systemctl enable hdparm.service ddc-restore.service
```

Check that the services and boot configuration are correct before rebooting.

## Maintenance

After changing the system configuration, run:

```bash
aconfmgr save
git status --short
```

Review any changes reported in `99-unsorted.sh`.

Move valid configuration changes into the appropriate scripts, add ignore rules for unwanted changes, and make sure the contents of `files/` match the intended configuration.

Once all changes have been reviewed and incorporated, remove the temporary `99-unsorted.sh` and run `aconfmgr save` again.

Commit and push the reviewed changes:

```bash
git add .
git commit -m "Update system configuration"
git push
```

`99-unsorted.sh` is temporary output and should not be committed.

## References

- [aconfmgr documentation](https://github.com/CyberShadow/aconfmgr)
- [Arch Linux Installation Guide](https://wiki.archlinux.org/title/Installation_guide)
- [Arch Linux Unified Kernel Image](https://wiki.archlinux.org/title/Unified_kernel_image)
