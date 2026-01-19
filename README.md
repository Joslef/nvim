# 🚀 My LazyVim Setup

A minimal yet powerful development environment built on top of LazyVim, enhanced with carefully selected plugins to streamline your workflow.

---

## ✨ Features

### 🎨 Beautiful Theme
- **[Catppuccin](https://github.com/catppuccin/nvim)** - A soothing pastel color scheme with multiple flavors (Latte, Frappé, Macchiato, Mocha)

### 📁 File Management
- **[Yazi](https://github.com/mikavilpas/yazi.nvim)** - Blazing fast terminal file manager integrated into Neovim with floating window support

### 🤖 AI-Powered Coding
- **[Windsurf](https://github.com/Exafunction/windsurf.nvim)** - Native Windsurf plugin for intelligent code completion and assistance
- **[OpenCode](https://github.com/NickvanDyke/opencode.nvim)** - AI assistant integration for code reviews, explanations, and editor-aware research

### 🔧 Git Integration
- **[LazyGit](https://github.com/kdheepak/lazygit.nvim)** - Powerful git UI accessible directly from Neovim in a floating window

---

## 🎯 Quick Start

### Prerequisites
- Neovim >= 0.8
- Git
- A Nerd Font (for icons)

### Installation

1. Clone or backup your existing Neovim configuration:
\`\`\`bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone LazyVim starter
git clone https://github.com/LazyVim/starter ~/.config/nvim
\`\`\`

2. Install the enhanced plugins by adding them to your \`~/.config/nvim/lua/plugins/\` directory

3. Start Neovim and let LazyVim install all dependencies:
\`\`\`bash
nvim
\`\`\`

---

## ⌨️ Custom Keymaps

This configuration includes tweaked keymaps for optimal workflow:

| Keymap | Action |
|--------|--------|
| \`<leader>h\` | Go back to Dashboard |

Feel free to customize these keymaps in your configuration to match your preferences!

---

## 🔌 Plugin Configuration

### Catppuccin Theme
Set your preferred flavor in your config:
\`\`\`lua
require("catppuccin").setup({
    flavour = "mocha" -- latte, frappe, macchiato, mocha
})
\`\`\`

### Yazi File Manager
Open with:
\`\`\`lua
vim.keymap.set("n", "<leader>-", function()
  require("yazi").yazi()
end)
\`\`\`

### LazyGit Integration
Open with:
\`\`\`lua
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>")
\`\`\`

### Windsurf AI
Authenticate and use:
\`\`\`vim
:Codeium Auth
:Codeium Chat
:Codeium Toggle
\`\`\`

### OpenCode AI Assistant
Quick prompts:
\`\`\`lua
require("opencode").ask()        -- Ask a custom question
require("opencode").select()     -- Select from prompt library
require("opencode").toggle()     -- Toggle embedded terminal
\`\`\`

---

## 📦 Dependencies

All plugins are managed through LazyVim's plugin manager. The following are the core additions:

- [Catppuccin/nvim](https://github.com/catppuccin/nvim) - Color scheme
- [mikavilpas/yazi.nvim](https://github.com/mikavilpas/yazi.nvim) - File manager
- [Exafunction/windsurf.nvim](https://github.com/Exafunction/windsurf.nvim) - AI completion
- [NickvanDyke/opencode.nvim](https://github.com/NickvanDyke/opencode.nvim) - AI assistant
- [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) - Git UI

---

## 🛠️ Troubleshooting

### Plugins not loading?
Run \`:Lazy\` to check plugin status and sync:
\`\`\`vim
:Lazy sync
\`\`\`

### Catppuccin not applying?
Make sure to compile the theme:
\`\`\`vim
:CatppuccinCompile
\`\`\`

### AI plugins not working?
- **Windsurf**: Run \`:Codeium Auth\` to authenticate
- **OpenCode**: Ensure OpenCode is installed and running in your project directory

---

## 📚 Resources

- [LazyVim Documentation](https://www.lazyvim.org/)
- [Neovim Documentation](https://neovim.io/doc/user/)
- [Catppuccin Project](https://catppuccin.com/)

---

## 💡 Tips

- Press \`<leader>h\` to quickly return to the dashboard
- Use \`<leader>-\` to open Yazi for fast file navigation
- Use \`<leader>lg\` to access LazyGit for version control
- Leverage AI tools with custom prompts for code reviews and explanations

---

**Happy coding! 🎉**
