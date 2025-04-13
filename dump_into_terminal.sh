#!/bin/bash

# dump to OS

cat alacritty.toml > $HOME/.config/alacritty/alacritty.toml
cat config.lua > $HOME/.config/lvim/config.lua 
cat sql.lua > $HOME/.config/lvim/after/ftplugin/sql.lua
cat theme.lua > $HOME/.local/share/lunarvim/lvim/lua/lvim/core/theme.lua
cat lsp_config.lua > $HOME/.local/share/lunarvim/lvim/lua/lvim/lsp/config.lua
