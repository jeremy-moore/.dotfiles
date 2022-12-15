{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home.stateVersion = "22.05";
  home.username = "jim";
  home.homeDirectory = "/home/jim";

  programs.gpg = {
    enable = true;
  };

  services.gpg-agent = {
    enable = true;
    pinentryFlavor = "qt";
  };

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    emacs
    firefox
    git
    git-crypt
    gnupg
    obsidian
    pinentry_qt
    thunderbird
    tor-browser-bundle-bin
    tree
    notion-app-enhanced
    signal-desktop
    unar
    vlc
  ];
}
