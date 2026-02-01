{ config, pkgs, ... }:

{
    users.users.rene = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "audio"
    ];
    initialPassword = "nixos"; # Change password later
    packages = with pkgs; [
      tree
    ];
  };
}