# Fedora 40 Dotfiles with I3WM

My personal dotfiles for fedora with i3wm and rose pine theme. Using this on work laptop.

## Install instructions

Follow in order.

### Install the OS

Choose the Fedora 40 I3WM spin. You can download it from here: https://fedoraproject.org/spins/i3/

This is the most painless method to get I3 onto fedora imho so I went with that.

### Download Dependencies

**Packages:**

`sudo dnf install git kitty rofi zsh vim qalculate automake libtool rofi-devel blueman polybar sddm qt6-qtsvg scrot ImageMagick fd-find lsd fastfetch flameshot`

**Add starship copr and install starship prompt:**

`sudo dnf copr enable -y atim/starship && sudo dnf install starship`

**Font:**

Download Jetbrains Mono NerdFont from the official repository: https://github.com/ryanoasis/nerd-fonts

**Install Oh My ZSH:**

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

**Clipboard History:**

I'm using greenclip with rofi as clipboard history since it's very lightweight.

Download and install instructions here: https://github.com/erebe/greenclip

### Entering some setup commands

**1. Change shell to ZSH**

For your User: `chsh -s $(which zsh)`<br>
For root User: `sudo chsh -s $(which zsh)`

**Change Display Manager to SDDM**

Disable lightdm and enable sddm. After that reboot the pc to check if it applied the change!

```bash
sudo systemctl disable lightdm-plymouth
sudo systemctl enable sddm
```

However, since it will look ugly, install this theme: https://github.com/Keyitdev/sddm-astronaut-theme

It does not fit very well with the rose pine theme but it looks cool!

### Adding the style

The last step is to add the configuration for the major programs that you'll be using.

To do this, clone this repo and put everything inside of it (except the readme) inside your home folder.

**Firefox**

To get some firefox styling, you can download the rose pine theme from here: https://addons.mozilla.org/en-US/firefox/addon/rose-pine/