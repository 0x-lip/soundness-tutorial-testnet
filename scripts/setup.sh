#!/bin/bash
set -e

echo "🚀 Starting Soundness Testnet setup..."

echo "[1/6] Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "[2/6] Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

echo "[3/6] Installing soundnessup..."
curl -sSL https://raw.githubusercontent.com/soundnesslabs/soundness-layer/main/soundnessup/install | bash
source ~/.bashrc

echo "[4/6] Installing Soundness CLI..."
soundnessup install

echo "[5/6] Creating example wallet.json..."
cat <<EOL > wallet.json.example
{
  "priv": "YOUR_PRIVATE_KEY",
  "addr": "octxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "rpc": "https://soundness.network"
}
EOL
cp wallet.json.example wallet.json

echo "[6/6] Setup complete!"
echo "✅ Now you can generate/import your key with:"
echo "   soundness-cli generate-key --name my-key"
echo "   OR"
echo "   soundness-cli import-key --name MyName --mnemonic 'your mnemonic phrase'"
