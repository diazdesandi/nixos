{ pkgs, ... }:

# GEMINI GENERATED FILE
# Starting theme configuration
{
  environment.systemPackages = with pkgs; [
    nwg-look
    qt5ct
    qt6ct

    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code

    catppuccin-cursors.mochaDark
    papirus-icon-theme
  ];

  environment.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "qt5ct";
  };
}
