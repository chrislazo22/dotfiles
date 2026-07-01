# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a Neovim configuration using Lua, structured with the following key components:

- **Entry Point**: `init.lua` loads core configuration and Lazy.nvim plugin manager
- **Core Configuration**: Located in `lua/core/` containing options, keymaps, and custom functions
- **Plugin Management**: Uses Lazy.nvim to manage plugins, with configurations in `lua/plugins/`
- **LSP Setup**: Language server configurations in `lua/plugins/lsp/` using Mason for automatic installation

### Directory Structure

```
├── init.lua                    # Main entry point
├── lua/
│   ├── core/
│   │   ├── init.lua           # Loads all core modules
│   │   ├── options.lua        # Vim options and settings
│   │   ├── keymaps.lua        # Custom key mappings
│   │   └── custom_functions.lua # Custom Lua functions
│   ├── config/
│   │   └── lazy.lua           # Lazy.nvim plugin manager setup
│   └── plugins/
│       ├── init.lua           # Base plugin definitions
│       ├── lsp/               # Language server configurations
│       │   ├── mason.lua      # LSP server installer
│       │   └── lspconfig.lua  # LSP server configurations
│       ├── formatting.lua     # Code formatting with conform.nvim
│       ├── telescope.lua      # Fuzzy finder configuration
│       ├── nvim-cmp.lua       # Autocompletion setup
│       └── [other plugins]
```

## Key Configuration Details

### Leader Key
- Leader key is set to space (`" "`)
- Most custom mappings use `<leader>` prefix

### Plugin Manager
- Uses Lazy.nvim for plugin management
- Plugins are imported from both `plugins` and `plugins.lsp` directories
- Auto-installation enabled for LSP servers and tools

### LSP & Development Tools
- **Mason**: Automatically installs LSP servers, formatters, and linters
- **Configured Languages**: Lua, Ruby, JavaScript/TypeScript, Swift
- **Formatting**: Uses conform.nvim with format-on-save enabled
- **Auto-completion**: nvim-cmp with LSP integration

### Essential Key Mappings
- `jk` - Exit insert mode (Escape is disabled)
- `<leader>w` - Save file
- `<leader>q` - Quit without saving
- `<leader>ff` - Find files (Telescope)
- `<leader>fs` - Live grep (Telescope)
- `<leader>mp` - Format current file
- `<leader>sr` - Search and replace function
- `gd` - Go to definition (LSP)
- `gR` - Show references (LSP)

## Development Workflow

### Making Configuration Changes
1. Edit files in `lua/core/` for global settings
2. Add new plugins in `lua/plugins/` with individual configuration files
3. LSP-related changes go in `lua/plugins/lsp/`
4. Restart Neovim to apply changes (`:q` then reopen)

### Plugin Management
- New plugins: Add configuration files in `lua/plugins/`
- Plugin updates: Use `:Lazy sync` command
- Check plugin status: Use `:Lazy` command

### LSP Management
- Install new language servers: Add to mason.lua ensure_installed list
- LSP status: `:LspInfo`
- Restart LSP: `<leader>rs`

### Formatting & Linting
- Format on save is enabled by default
- Manual format: `<leader>mp`
- Supported formatters: prettier, stylua, rubocop, black, isort

## Special Features
- Mouse support is disabled
- Relative line numbers enabled
- Split windows open right/below by default
- Color column at 120 characters
- Custom search and replace function with confirmation
- Command abbreviations for common typos (W->w, Q->q, etc.)

## Plugin Dependencies
Core plugins include:
- lazy.nvim (plugin manager)
- telescope.nvim (fuzzy finder)
- nvim-lspconfig (LSP integration)
- mason.nvim (LSP installer)
- conform.nvim (formatting)
- nvim-cmp (completion)
- treesitter (syntax highlighting)