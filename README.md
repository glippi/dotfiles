# Dotfiles

GNU stow needed to mantain automatically the symlinks


## Use fish shell

Install fish and then run `chsh -s /usr/bin/fish`


## Nerd fonts

```sh
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv
```

## Gnome

Install `dconf` and try the command below, if it doesn't work, try with `-f` flag:

```sh dconf dump / > full-backup```

If you only want gnome related settings try this:

```sh dconf dump /org/gnome > gnome-backup```

If you use custom theme and icon, backup those separately.

Restore:

 * full restore       ```sh dconf load / < full-backup```
 * gnome only restore ```sh dconf load /org/gnome < gnome-backup```
