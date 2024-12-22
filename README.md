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

- Hot Corners (Mission Control, Desktop, Launchpad, Put Display to Sleep)
- Dock Settings (Disable "Show suggested and recent apps in Dock")
- Date & Time (24-hour, Display the time with seconds in the menu bar)
- Keyboard 
  - Key Repeat (Fast), Delay Until Repeat (Short)
  - Text Input - Input Sources - Edit - uncheck "Add full stop with double-space", "Use smart quotes"
  - Modifer keys - Caps lock to Escape
    - (if your keyboard is broken - install Karabinder Elements)
- Finder - Favourites - add home folder
- Trackpad - Uncheck "Swipe between pages"
- Accessibility
  - Zoom (not the app) > Use scroll gesture (Command) > Advanced > Appearance > Continuously with pointer
  - Pointer Control > Trackpad Options > Enable dragging (three finger drag)

#### Apps to download in your computer

- Chrome (if not already downloaded)
  - Stop asking to save password, use LastPass
  - Add LastPass extension 
- Zoom
- Logitech Options (if you own Logitech devices)
- VSCode

#### Allow screen recording for certain apps

- (This is so that you have less panic when you really need to screen record with those apps)
- Relevant apps: Google Chrome, Zoom, Slack, QuickTime Player
- Attempt to record screen with the app. Then go to Security & Privacy > Privacy > Screen Recording > Enable

## Development setup

#### iTerm2 setup

- https://medium.com/ayuth/iterm2-zsh-oh-my-zsh-the-most-power-full-of-terminal-on-macos-bdb2823fb04c
- Set up your **aliases** - following is mine [.zshrc](./.zshrc)

#### Applications to install with brew

- (brew should be already installed together with zsh)
- `brew install git wget htop`
- `brew cask install smcfancontrol` (if you want to manage the computer uptime on the fan speed level)

#### Java installation

- (tbc)

## Issues

- (tbc)

## Miscellaneous

#### How to fix your computer

- (no longer required for M1 laptops)
  - reset NVRAM or PRAM https://support.apple.com/en-us/HT204063
  - reset the SMC https://support.apple.com/en-sg/HT201295
- run diagnostics https://support.apple.com/en-sg/HT202731
- reset the computer if all else fails https://support.apple.com/en-gb/HT208496
