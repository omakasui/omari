# Install terminaltexteffects
pipx install terminaltexteffects

# Ensure pipx binaries are in PATH
pipx ensurepath

# Add pipx binaries to PATH for current and future sessions
export PATH="$HOME/.local/bin:$PATH"

# Also update PATH in the parent shell environment by writing to a temp file
# that can be sourced by the main installation script
mkdir -p "$HOME/.local/state/omari"
echo "export PATH=\"\$HOME/.local/bin:\$PATH\"" >> "$HOME/.local/state/omari/.env_update"