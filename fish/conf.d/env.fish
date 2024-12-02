set Global set -Uxtings
set -Ux LDFLAGS -L/usr/local/opt/zlib/lib
set -Ux CPPFLAGS -I/usr/local/opt/zlib/include
set -Ux PKG_CONFIG_PATH /usr/local/opt/zlib/lib/pkgconfig
set -Ux CPU_NUMBER $(sysctl -n hw.ncpu)
set -Ux XDG_CONFIG_HOME "$HOME/.config"
set -Ux collect_analytics false
set -Ux CONFIG_DIR "$HOME/.config/lazygit/"
set -Ux GOPATH "$HOME/go"

# CPP
set -Ux LDFLAGS "-L/usr/local/opt/node@14/lib"
set -Ux CPPFLAGS "-I/usr/local/opt/node@14/include"

set -Ux EDITOR nvim
set -Ux ANDROID_HOME $HOME/Library/Android/sdk


# Docker M1
set -Ux DOCKER_BUILDKIT 1
set -Ux COMPOSE_DOCKER_CLI_BUILD 1

set -Ux NODE_ENV development
set -Ux NODE_NO_WARNINGS 1
set -Ux NODE_OPTIONS "--max-old-space-size=8192"
set -Ux RTC_METRO_PORT 9090

# Vim
set -Ux NVIM_APPNAME nvim

set -Ux GIT_PAGER delta
set -Ux TERM screen-256color

# Starship
set -Ux STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"

# NIX
set -Ux NIX_SSL_CERT_FILE "/etc/ssl/certs/ca-certificates.crt"
set -Ux NIX_PROFILES "/nix/var/nix/profiles/default /run/current-system/sw /Users/nicholasrq/.nix-profile"
set -Ux __NIX_DARWIN_SET_ENVIRONMENT_DONE 1
set -Ux NIX_PATH "nixphgs=flake:nixpkgs:/nix/var/nix/profiles/per-user/root/channels"
set -Ux NIX_USER_PROFILE_DIR "/nix/var/nix/profiles/per-user/nicholasrq"
set -Ux NIX_REMOTE daemon
