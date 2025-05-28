return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    -- Find Plugin File
    {
      "<leader>fP",
      "<cmd>FzfLua files cwd=" .. require("lazy.core.config").options.root .. "<cr>",
      desc = "Find Plugin File",
    },

    -- Find files (similar to ;f in Telescope)
    { ";f", "<cmd>FzfLua files<cr>", desc = "Lists files in your current working directory" },

    -- Live grep (similar to ;r in Telescope)
    { ";r", "<cmd>FzfLua live_grep<cr>", desc = "Search for a string in your current working directory" },

    -- Buffers (similar to \\ in Telescope)
    { "\\\\", "<cmd>FzfLua buffers<cr>", desc = "Lists open buffers" },

    -- Help tags (similar to ;t in Telescope)
    { ";t", "<cmd>FzfLua help_tags<cr>", desc = "Lists available help tags" },

    -- Resume (similar to ;; in Telescope)
    { ";;", "<cmd>FzfLua resume<cr>", desc = "Resume the previous picker" },

    -- Diagnostics (similar to ;e in Telescope)
    { ";e", "<cmd>FzfLua diagnostics<cr>", desc = "Lists Diagnostics for all open buffers" },

    -- Treesitter symbols (similar to ;s in Telescope)
    { ";s", "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Lists Function names, variables from LSP" },

    -- File browser (similar to sf in Telescope)
    {
      "sf",
      function()
        require("fzf-lua").files({ cwd = vim.fn.expand("%:p:h") })
      end,
      desc = "Open File Browser with the path of the current buffer",
    },
  },
  opts = {
    -- You can add default fzf-lua configuration here
    file_ignore_patterns = { "%.git/", "node_modules/", "%.cache/", "%.class/", "%.idea/", "%.vscode/", "%.history/" },
    winopts = {
      height = 0.85,
      width = 0.85,
    },
  },
}
