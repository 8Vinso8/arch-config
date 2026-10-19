AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage linux-zen # The Linux ZEN kernel and modules
AddPackage linux-firmware # Firmware files for Linux - Default set
AddPackage amd-ucode # Microcode update image for AMD CPUs
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager

AddPackage git # the fast distributed version control system
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
AddPackage --foreign yay-bin # Yet another yogurt. Pacman wrapper and AUR helper written in go. Pre-compiled.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux

AddPackage networkmanager # Network connection manager and user applications
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage sudo # Give certain users the ability to run some commands as root

AddPackage zram-generator # Systemd unit generator for zram devices

AddPackage hdparm # A shell utility for manipulating Linux IDE drive/driver parameters
AddPackage ddcutil # Query and change Linux monitor settings using DDC/CI and USB.
AddPackage power-profiles-daemon # Makes power profiles handling available over D-Bus (used by scx_loader)
AddPackage joyutils # jscal, jstest and jsattach utilities for the Linux joystick driver - to change moza wheelbase fuzz value
AddPackage --foreign boxflat-git # Adjust your Moza Racing gear settings - to configure moza wheelbase

AddPackage btrfs-progs # Btrfs filesystem utilities
AddPackage compsize # Calculate compression ratio of a set of files on Btrfs

AddPackage terminus-font # Monospace bitmap font (for X11 and console)
AddPackage ttf-jetbrains-mono # Typeface for developers, by JetBrains
AddPackage ttf-jetbrains-mono-nerd # Patched font JetBrains Mono from nerd fonts library
AddPackage noto-fonts # Google Noto TTF fonts
AddPackage noto-fonts-cjk # Google Noto CJK fonts
AddPackage noto-fonts-emoji # Google Noto Color Emoji font

AddPackage fish # Smart and user friendly shell intended mostly for interactive use
AddPackage fisher # A package manager for the fish shell
AddPackage zoxide # A smarter cd command for your terminal
AddPackage fzf # Command-line fuzzy finder
AddPackage bat # Cat clone with syntax highlighting and git integration
AddPackage eza # A modern replacement for ls (community fork of exa)
AddPackage fd # Simple, fast and user-friendly alternative to find
AddPackage fastfetch # A feature-rich and performance oriented neofetch like system information tool
AddPackage btop # A monitor of system resources, bpytop ported to C++
AddPackage less # A terminal based program for viewing text files
AddPackage android-tools # Android platform tools

AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs
AddPackage tree-sitter-cli # CLI tool for developing, testing, and using Tree-sitter parsers | nvim-treesitter dependency
AddPackage lua-language-server # Lua Language Server coded by Lua

AddPackage --foreign antigravity-cli # Google's agentic development platform (CLI companion)

AddPackage dolphin # KDE File Manager
AddPackage ark # Archiving Tool
AddPackage 7zip # File archiver for extremely high compression
AddPackage unarchiver # unar and lsar: Objective-C tools for uncompressing archive files
AddPackage unrar # The RAR uncompression program

AddPackage mesa # Open-source OpenGL drivers
AddPackage lib32-mesa # Open-source OpenGL drivers - 32-bit
AddPackage vulkan-radeon # Open-source Vulkan driver for AMD GPUs

AddPackage steam # Valve's digital software delivery system
AddPackage xorg-fonts-cyrillic # X.org cyrillic fonts
AddPackage xorg-fonts-misc # X.org misc fonts
AddPackage xorg-mkfontscale # Create an index of scalable font files for X
AddPackage --foreign proton-ge-custom-bin # A fancy custom distribution of Valves Proton with various patches
AddPackage --foreign protonup-qt-bin # Install and manage Proton-GE for Steam and Wine-GE for Lutris with this graphical user interface.
AddPackage --foreign optiscaler-client-bin # A modern manager for OptiScaler
AddPackage gamemode # A daemon/lib combo that allows games to request a set of optimisations be temporarily applied to the host OS
AddPackage protontricks # Run Winetricks commands for Steam Play/Proton games among other common Wine features
AddPackage scx-tools # D-Bus interface and tools (scx_loader, scxctl) for managing sched-ext (eBPF) CPU schedulers

AddPackage pipewire # Low-latency audio/video router and processor
AddPackage lib32-pipewire # Low-latency audio/video router and processor - 32-bit
AddPackage wireplumber # Session / policy manager implementation for PipeWire
AddPackage pipewire-audio # Low-latency audio/video router and processor - Audio support
AddPackage pipewire-alsa # Low-latency audio/video router and processor - ALSA configuration
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement
AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage lib32-pipewire-jack # Low-latency audio/video router and processor - 32-bit - JACK support
AddPackage rtkit # Realtime Policy and Watchdog Daemon
AddPackage realtime-privileges # Realtime privileges for users
AddPackage pavucontrol # PulseAudio Volume Control
AddPackage cava # Console-based Audio Visualizer

AddPackage greetd # Generic greeter daemon
AddPackage hyprland # a highly customizable dynamic tiling Wayland compositor
AddPackage --foreign hyprland-per-window-layout # Per window keyboard layout (language) for Hyprland wayland compositor
AddPackage --foreign waybar-git # Highly customizable Wayland bar for Sway and Wlroots based compositors
AddPackage xdg-desktop-portal-hyprland # xdg-desktop-portal backend for hyprland
AddPackage hyprshot # Hyprland screenshot utility
AddPackage hyprpicker # Hyprshot dependency to freeze screen during screenshot 
AddPackage hyprpolkitagent # Simple polkit authentication agent for Hyprland, written in QT/QML
AddPackage hyprpaper # Hyprland wallpaper utility
AddPackage hypridle # Hyprland's idle daemon
AddPackage mako # Lightweight notification daemon for Wayland
AddPackage libnotify # Library for sending desktop notifications
AddPackage rofi # A window switcher, application launcher and dmenu replacement
AddPackage cliphist # wayland clipboard manager
AddPackage rofi-emoji # A Rofi plugin for selecting emojis
AddPackage wtype # xdotool type for wayland rofi emoji dependency
AddPackage xdg-user-dirs # Manage user directories like ~/Desktop and ~/Music

AddPackage qt6ct # Qt 6 Configuration Utility
AddPackage nwg-look # GTK settings editor adapted to work on wlroots-based compositors
AddPackage --foreign catppuccin-gtk-theme-mocha # Soothing pastel theme for GTK - Mocha
AddPackage kvantum # SVG-based theme engine for Qt6 (including config tool and extra themes)
AddPackage --foreign kvantum-theme-catppuccin-git # Soothing pastel theme for Kvantum
AddPackage adwaita-cursors # GNOME standard cursors
AddPackage breeze-icons # Breeze icon theme
AddPackage papirus-icon-theme # Pixel-perfect icon theme for Linux
AddPackage --foreign papirus-folders-catppuccin-git # Soothing pastel theme for Papirus Icon Theme folders

AddPackage --foreign throne-sysqt-bin # Cross-platform GUI proxy utility (Empowered by sing-box) not pack the Qt libraries
AddPackage kitty # A modern, hackable, featureful, OpenGL-based terminal emulator
AddPackage fooyin # A customisable music player
AddPackage --foreign zen-browser-bin # Official package for Zen, a privacy-focused, feature packed Firefox-based web browser
AddPackage mpv # a free, open source, and cross-platform media player
AddPackage qbittorrent # An advanced BitTorrent client programmed in C++, based on Qt toolkit and libtorrent-rasterbar

AddPackage syncthing # Open Source Continuous Replication / Cluster Synchronization Thing

