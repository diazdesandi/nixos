{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    gamescopeSession.enable = true;
  };

  programs.gamemode.enable = true;

  # Commens to not forget what they actually are
  environment.systemPackages = with pkgs; [
    mangohud # FPS overlay
    protonup-qt # Proton (remove if using Linux native games only)
  ];
}
