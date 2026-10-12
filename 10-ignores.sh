function IgnorePathsExcept() {
    # Ignore all paths in the given directory (first parameter)
    # that do not match the given whitelist (second parameter)

    local search_dir="${1%/}"
    shift
    local white_list=("$@")
    local find_args=()
    local ignore_path

    if [ ! -d "$search_dir" ]; then
        FatalError "The path ${search_dir} must be an existing directory\n"
    fi

    for ignore_path in "${white_list[@]}"; do
        local base="$ignore_path"
        if [[ "$ignore_path" =~ ^/ ]]; then
            FatalError "The path ${ignore_path} in the whitelist is not relative to the directory ${search_dir}\n"
        fi
        # Add all base paths to the argument list as well, otherwise
        # -prune will prevent us from reaching the whitelisted files.
        while [ "$base" != '.' ]; do
            find_args+=(-path "$search_dir/$base" -o)
            base="$(dirname "$base")"
        done
    done

    # Find everything except the given whitelist and the directory
    # being searched from
    find "$search_dir" -not \( "${find_args[@]}" -path "$search_dir" \) -prune | \
        while read -r file; do
            if [[ -d "$file" ]]; then
                IgnorePath "$file/*"
            fi
            IgnorePath "$file"
        done
}

system_whitelist=(
    'hdparm.service'
    'ddc-restore.service'
)
IgnorePathsExcept '/etc/systemd/system' "${system_whitelist[@]}"

IgnorePath '/var/*'
IgnorePath '/swapfile'

IgnorePath '/boot/*'
IgnorePath '/efi/*'

IgnorePath '/etc/ca-certificates/*'

IgnorePath '/etc/fonts/*'

IgnorePath '/etc/fstab'

IgnorePath '/etc/pacman.d/*'

IgnorePath '/etc/ssl/*'

IgnorePath '/usr/*'

IgnorePath '/opt/*'

# Temporary and generated state
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/.updated'
IgnorePath '/etc/adjtime'
IgnorePath '/etc/ld.so.cache'
IgnorePath '/etc/machine-id'
IgnorePath '/etc/os-release'

# Local account databases
IgnorePath '/etc/passwd*'
IgnorePath '/etc/group*'
IgnorePath '/etc/shadow*'
IgnorePath '/etc/gshadow*'

# Local subordinate UID/GID mappings
IgnorePath '/etc/subuid*'
IgnorePath '/etc/subgid*'



IgnorePath '/etc/systemd/user/*'

IgnorePath '/etc/shells'

IgnorePath '/etc/audisp'
IgnorePath '/etc/audit'

IgnorePath '/etc/cmdline.d/root.conf'
