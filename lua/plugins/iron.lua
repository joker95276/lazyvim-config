return {
  {
    "Vigemus/iron.nvim",
    ft = { "python" }, -- 仅在打开 Python 文件时加载该插件
    config = function()
      local iron = require("iron.core")
      local view = require("iron.view")

      iron.setup({
        config = {
          scratch_repl = true,
          -- 针对 Python 文件，定义 ipython 为 REPL
          repl_definition = {
            python = {
              command = { "ipython", "--no-autoindent", "--colors=Linux" },
              format = require("iron.fts.common").bracketed_paste_python,
            },
          },
          -- 比如这里设置 REPL 显示在右侧
          repl_open_cmd = view.split.vertical.botright("40%"),
        },
        keymaps = {
          send_motion = "<space>sr",
          visual_send = "<space>sr",
          send_file = "<space>sf",
          send_line = "<space>sl",
          send_mark = "<space>sm",
          mark_motion = "<space>mc",
          mark_visual = "<space>mc",
          remove_mark = "<space>md",
          cr = "<space>s<cr>",
          interrupt = "<space>s<space>",
          exit = "<space>sq",
          clear = "<space>cl",
        },
        highlight = {
          italic = true,
        },
        ignore_blank_lines = true,
      })

      vim.keymap.set("n", "<space>rs", "<cmd>IronRepl<cr>")
      vim.keymap.set("n", "<space>rr", "<cmd>IronRestart<cr>")
      vim.keymap.set("n", "<space>rf", "<cmd>IronFocus<cr>")
      vim.keymap.set("n", "<space>rh", "<cmd>IronHide<cr>")
    end,
  },
}
