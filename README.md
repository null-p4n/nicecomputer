# Mario-Head BSOD Experiment

## About This Repository
This repository contains an experiment where a simple Mario-head BSOD executable is triggered via a Ducky Script. The focus here is on making the execution flow as obscure as possible without going completely overboard with obfuscation. 

## Repository Contents
- **`nicecomputer.ps1`** – A PowerShell script that downloads, decrypts, and executes the BSOD trigger.
- **`mario_dist.exe`** – The compiled executable responsible for the actual BSOD.
- **`nicecomputer.txt`** – The Ducky Script used to deliver and execute the payload.

## How It Works
1. The Ducky Script executes the PowerShell payload.
2. The PowerShell script:
   - Uses base64 encoding, character shifting, and XOR to obfuscate the download URL.
   - Fetches the `mario_dist.exe` from an obscure URL.
   - Executes the file and deletes it after execution.
3. The executable triggers a BSOD with a Mario-head twist.

## Why This Approach?
- **Obfuscation without insanity** – The PowerShell script is structured to be difficult to read at a glance but not impossible to reverse-engineer.
- **Minimal dependencies** – Uses built-in Windows utilities to execute the payload.
- **Experimentation** – This is a test of how well obfuscation techniques can hide intent while maintaining functionality.

## Future Plans
Eventually, I will document why I chose specific obfuscation techniques, potential improvements, and how this experiment could evolve.

## Disclaimer
This project is for educational and research purposes only. Do not use it for malicious activities.

