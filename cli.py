#!/usr/bin/env python3
import subprocess
import sys

def main():
    if len(sys.argv) > 1:
        command = ["soundness-cli"] + sys.argv[1:]
    else:
        command = ["soundness-cli", "--help"]

    try:
        subprocess.run(command)
    except FileNotFoundError:
        print("❌ soundness-cli not found. Please run ./scripts/setup.sh first.")

if __name__ == "__main__":
    main()
