# macOS setup

[TOC]

## Recommended first processes

#### Initiation

- You should be given a freshly reformatted Mac with the latest OS installed.
- Do not enable Siri and Apple Pay.
- Do log in to your Apple ID if that is your intention.
- Do not forget the computer password, just write it down somewhere first.
- Please restart the computer to ensure that your password still works.

#### Essential apps

- (You should install these apps first to make installing easier)
- Google Chrome (the web browser you will be using anyway)
- Telegram (for me to send notes to myself)

#### iCloud

- Create an iCloud account, remember the username and password
- If you cannot create iCloud account, try doing that in the App Store
- Please restart the computer to ensure that your password still works

- Enable Find My Mac

  

## Application setup

#### Personal preferences

- Hot corners (mission control, desktop, launchpad, sleep)
- Dock preferences (delete everything else, do not show recent applications in Dock)
- Clock (24-hour, show seconds)
- Keep computer awake unless locked (energy saver, screensaver)
- Keyboard (fast key repeat)
- Finder (Favourites - home folder, Desktop, Downloads, relevant repositories)
- Trackpad - Uncheck "Swipe between pages"

#### Apps to download in your computer

- Chrome (if not already downloaded)
- Telegram (if not already downloaded)
- Typora
- Zoom
- Visual Studio Code
- PyCharm

#### Allow screen recording for certain apps

- (This is so that you have less panic when you really need to screen record with those apps)
- Relevant apps: Google Chrome, Zoom, QuickTime Player
- Attempt to record screen with the app. Then go to Security & Privacy > Privacy > Screen Recording > Enable



## Development setup

#### iTerm2 setup

- https://medium.com/ayuth/iterm2-zsh-oh-my-zsh-the-most-power-full-of-terminal-on-macos-bdb2823fb04c
- Set up your **aliases** - following is mine [.zshrc](./zshrc)

#### Applications to install with brew

- (brew should be already installed together with zsh)
- `brew install git wget htop`
- `brew cask install smcfancontrol`

#### Java installation

- (tbc)

#### Anaconda installation

- `brew cask install anaconda`
- `echo 'export PATH="/usr/local/anaconda3/bin:$PATH"' >> ~/.zshrc`

```bash
# if there are permission issues
# sudo chown -R tonghuikang /usr/local/anaconda3
# sudo chown -R tonghuikang ~/
```
- For installation for individual environments please refer to python.md



## Miscellaneous

#### How to fix your computer

- reset NVRAM or PRAM https://support.apple.com/en-us/HT204063
- reset the SMC https://support.apple.com/en-sg/HT201295
- run diagnostics https://support.apple.com/en-sg/HT202731
- reset the computer if all else fails https://support.apple.com/en-gb/HT208496