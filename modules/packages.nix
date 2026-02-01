{ config, pkgs, ... }:

{

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # zen-browser # TODO: Package not available, use flakes.
    firefox
    btop
    fastfetch
    openssl
    curl
  ];

}
