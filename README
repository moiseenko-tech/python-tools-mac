# 🐍 python-tools-mac

A simple and flexible way to set up Python and useful CLI tools on macOS.

You can install them using pipx for isolated environments or go the classic route with venv.

## Step 1: Install Homebrew

First things first — make sure you have [Homebrew](https://brew.sh), the package manager for macOS.

If it’s not installed yet, run:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Step 2: Install Python
Check the [official downloads page](https://www.python.org/downloads/macos/) to see the latest stable version of Python.
At the time of writing, it’s **3.13**.

Install it via Homebrew:
```bash
brew install python@3.13
```
## Step 3: Install Tools
### Option 1: Use pipx (Recommended)
Want each tool in its own isolated environment? [pipx](https://pipx.pypa.io/stable/) is your friend.

Just run the installer script:
```bash
bash install pipx.sh
```
It’ll take care of everything.

### Option 2: Use a Virtual Environment
Prefer the good old venv? No problem.

Set it up like this:
```bash
export VENV_DIR=/opt/tools
sudo mkdir $VENV_DIR
sudo chown $(whoami):$(id -g) $VENV_DIR
python3.13 -m venv $VENV_DIR
```

Then activate the environment and install the tools:
```bash
source $VENV_DIR/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```