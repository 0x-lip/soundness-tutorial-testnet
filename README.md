# Soundness Tutorial Testnet

How to get onboarded and interact with the Soundness layer.

---

## Step 1
- Join Discord: https://discord.gg/PCVvrE7nP3  
- Follow [@SoundnessLabs](https://x.com/SoundnessLabs)

## Step 2
- Create your best content on X about **@SoundnessLabs**  
- Share your content link on Discord **#content**

## Step 3
- If your content is good, you’ll be tagged as a **winner** in the general chat  
- Take a screenshot as proof → DM the mod  
- The mod will send you a **code**

## Step 4
- Create a public key on GitHub and save your mnemonic phrase

### 🪡 Soundness Setup
```bash
curl -sSL https://raw.githubusercontent.com/soundnesslabs/soundness-layer/main/soundnessup/install | bash
source ~/.bashrc
sudo apt update && sudo apt upgrade -y 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
soundnessup install
```

### 🔑 Key Management
Generate key:
```bash
soundness-cli generate-key --name my-key
```

Import key:
```bash
soundness-cli import-key --name MyKey --mnemonic "your mnemonic"
```

## Step 5
- Go to Soundness Discord → #game-arena  
- Type `/8queens` → play & win  
- Paste proof on CLI with your key name

---

## Scripts

### Install & Setup
```bash
./scripts/setup.sh
```

### Run CLI
```bash
./scripts/run.sh
```

### Run via Python Wrapper
```bash
python3 cli.py --help
```




## info

You can use this tool to check the current role and schedule to runing the game

https://soundnessrole.netlify.app/

Try to  played at  least 10 and upload cli successfully to mint badge
To check badge visit #game-arena and type  /badge
