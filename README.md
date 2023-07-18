# My dotfile setup

## Install
```shell
git clone https://github.com/arunoruto/dotfiles ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

## Fonts
`nvim` and `tmux` require a patched [nerd font](https://www.nerdfonts.com/). Since FiraCode enables ligatures, I opt for [FiraCode Nerd Font](https://www.programmingfonts.org/#firacode) for a cohesive look.
After downloading your font, move the font fodler into `~/.local/share/fonts/`. Run `fc-cache -fv` to make the font available. To check if it was successful, use `fc-list | grep -i firacode`. If you have FiraCode Nerd Font inside of your `.local` folder, you are good to go!

# Inspirations
Some videos and articles from where the configs are based on.

<details>
<summary>Nvim</summary>
<br>

[![Turn VIM into a full featured IDE with only one command](https://img.youtube.com/vi/Mtgo-nP_r8Y/0.jpg)](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)
</details>

<details>
<summary>Tmux</summary>
<br>

[![Tmux has forever changed the way I write code.](https://img.youtube.com/vi/DzNmUNvnB04/0.jpg)](https://www.youtube.com/watch?v=DzNmUNvnB04)
</details>

# TODO
Create [ansible](https://www.ansible.com/) playbooks for installing all packages and setting up the configs!
