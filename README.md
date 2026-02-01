# NixOS Configuration

This repository contains my personal NixOS configuration, managed with **Nix Flakes**. It features a modular structure for easy maintenance and scalability.

## 🚀 Features

- **Flake-based**: Reproducible and consistent system builds.
- **Modular Design**: Configuration is split into logical modules (e.g., `hyprland`, `gaming`, `dev`).
- **Desktop Environment**: [Hyprland](https://hyprland.org/) window manager.
- **Gaming Ready**: Steam, Gamemode.
- **CI/CD**: GitHub Actions workflow to verify builds on push.

## 📂 Structure

```
├── configuration.nix
├── flake.nix        
├── hardware-configuration.nix 
├── modules/                
│   ├── boot.nix            # Bootloader settings
│   ├── default.nix         # Imports all modules
│   ├── dev.nix             # Development tools
│   ├── gaming.nix          # Steam & gaming optimizations
│   ├── hardware.nix        # Hardware specifics
│   ├── hyprland.nix        # WM configuration
│   ├── network.nix         # Networking setup
│   ├── packages.nix        # General system packages
│   ├── services.nix        # System services
│   ├── theme.nix           # Theming and appearance
│   ├── time.nix            # Timezone and locale
│   └── users.nix           # User management
└── .github/                # CI/CD workflows
```

## 🛠️ Usage

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/diazdesandi/nixos.git ~/nixos
    cd ~/nixos
    ```

2.  **Update Hardware Config:**
    overwrite `hardware-configuration.nix` with the one generated during installation (usually found at `/etc/nixos/hardware-configuration.nix`) if installing on new hardware.

3.  **Apply Configuration:**
    Run the following command to rebuild and switch to the new configuration:
    ```bash
    sudo nixos-rebuild switch --flake .#nixos-laptop
    ```

### Updates

To update system packages and flake inputs:

```bash
nix flake update
sudo nixos-rebuild switch --flake .#nixos-laptop
```
