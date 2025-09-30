#!/bin/bash

# load from OS to files

cd ../files/
cat $HOME/.config/lvim/config.lua > config.lua
cat $HOME/.config/alacritty/alacritty.toml > alacritty.toml
cat $HOME/.tmux.conf > tmux.conf
cat $HOME/.ideavimrc >ideavim
cat $HOME/.bashrc > bashrc

# cat $HOME/.config/lvim/after/ftplugin/sql.lua > sql.lua
# cat $HOME/.local/share/lunarvim/lvim/lua/lvim/core/theme.lua > theme.lua
# cat $HOME/.local/share/lunarvim/lvim/lua/lvim/lsp/config.lua > lsp_config.lua
