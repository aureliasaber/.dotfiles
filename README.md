# .dotfiles

Run `./install.sh` to install necessary packages using `yay` and configure them

After installation, add the below line to the `tmux popup` call in
`${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab/lib/ftb-tmux-popup`:

```diff
  tmux popup -x $popup_x -y $popup_y \
       -w $popup_width -h $popup_height \
+       -B -s "none" \
       -d $PWD -E ". $tmp_dir/fzf-$$" || ret=$?
  echo -E "$(<$tmp_dir/result-$$)"
```

This disables the tmux popup border and background
