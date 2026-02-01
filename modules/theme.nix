{ pkgs, ... }:

# GEMINI GENERATED FILE
# Starting theme configuration
{
  environment.systemPackages = with pkgs; [
    nwg-look

    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code

    catppuccin-cursors.mochaDark
    papirus-icon-theme
  ];
}
