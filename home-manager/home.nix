{ config, pkgs, ... }:

{
  home.username = "sastauser";
  home.homeDirectory = "/home/sastauser";
  home.stateVersion = "25.05";
  home.enableNixpkgsReleaseCheck = false;

  # CRUCIAL FOR FEDORA: Fixes GL errors and icon issues
  targets.genericLinux.enable = true;

  # 1. Simple package installs go here (things you don't need to configure)
  home.packages = [
    pkgs.ripgrep  # Useful for Yazi's search
    pkgs.fd       # Useful for Yazi's file finding
  ];

  # 2. Programs with built-in Home Manager modules go here
  programs.yazi = {
    enable = true;
    enableBashIntegration = true; # Or enableZshIntegration if you use Zsh
    settings = {
      manager = {
        show_hidden = true;
        sort_by = "mtime";
      };
    };
  };

 programs.zsh.enable = true;
  # Let Home Manager install and manage itself.
 programs.home-manager.enable = true;
}
