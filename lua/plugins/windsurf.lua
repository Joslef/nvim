return {
  {
    "Exafunction/windsurf.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<Tab>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
      vim.keymap.set("i", "<C-.>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true })
      vim.keymap.set("i", "<C-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true })
      vim.keymap.set("i", "<C-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true })
      vim.keymap.set("i", "<C-o>", function()
        return vim.fn["codeium#AcceptNextWord"]()
      end, { expr = true })
      vim.keymap.set("i", "<C-l>", function()
        return vim.fn["codeium#AcceptNextLine"]()
      end, { expr = true })
    end,
  },
}
