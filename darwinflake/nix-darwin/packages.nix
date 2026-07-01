{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    btop
    cabextract
    cmake
    coreutils
    docker-compose
    fd
    ffmpeg
    git
    htop
    k6
    neovim
    ninja
    opencode
    nodejs
    p7zip
    pipx
    python3
    ripgrep
    smartmontools
    tmux
    tree-sitter
    unzip
    wget
    zip
  ];
}
