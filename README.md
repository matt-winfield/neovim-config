# Matt W Neovim Config

Config modified from [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
Adds basic plugins and shortcuts the way I like them.

## Installation

(instructions for Windows since that's the OS I usually use)

First install the dependencies in an admin terminal (`mingw` and `zig` are used to compile plugins, like treesitter parsers):

- `choco install neovim --version neovim 0.10.4`
- `choco install mingw zig lazygit ripgrep`

Then install this configuration into the nvim configuration folder

- `git clone https://github.com/matt-winfield/neovim-config $env:LOCALAPPDATA\nvim`
