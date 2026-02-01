{ config, pkgs, ... }:

{

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    zen-browser
    btop
    fastfetch
    openssl
    curl
  ];

}
