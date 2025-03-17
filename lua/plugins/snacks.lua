return {
  "snacks.nvim",
  opts = {
    dashboard = {
      enabled = true,
      width = 60,
      row = nil, -- dashboard position. nil for center
      col = nil, -- dashboard position. nil for center

      preset = {
        header = [[


▒███████▒▒██   ██▒ ██▓  ██▒   █▓ ██▓ ███▄ ▄███▓
▒ ▒ ▒ ▄▀░▒▒ █ █ ▒░▓██▒ ▓██░   █▒▓██▒▓██▒▀█▀ ██▒
░ ▒ ▄▀▒░ ░░  █   ░▒██░  ▓██  █▒░▒██▒▓██    ▓██░
  ▄▀▒   ░ ░ █ █ ▒ ▒██░   ▒██ █░░░██░▒██    ▒██ 
▒███████▒▒██▒ ▒██▒░██████▒▒▀█░  ░██░▒██▒   ░██▒
░▒▒ ▓░▒░▒▒▒ ░ ░▓ ░░ ▒░▓  ░░ ▐░  ░▓  ░ ▒░   ░  ░
░░▒ ▒ ░ ▒░░   ░▒ ░░ ░ ▒  ░░ ░░   ▒ ░░  ░      ░
░ ░ ░ ░ ░ ░    ░    ░ ░     ░░   ▒ ░░      ░   
  ░ ░     ░    ░      ░  ░   ░   ░         ░   
░                           ░                  ]],
      },

      formats = {
        terminal = { align = "center" },
        version = { "%s", align = "center" },
      },

      sections = {
        {
          section = "header",
          height = 16,
          width = 10,
        },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
        {
          pane = 2,
          section = "terminal",
          cmd = 'chafa -p off --speed=0.9 --clear --passthrough=tmux --scale max "$HOME/.config/nvim/lua/plugins/shiyu.gif"',
          indent = 12,
          ttl = 0,
          height = 12,
          padding = 1,
        },
        { 
          pane = 2, 
          icon = " ", 
          title = "Recent Files", 
          section = "recent_files", 
          indent = 2,
          height = 9, 
          padding = 1
        },
        { 
          pane = 2, 
          icon = " ", 
          title = "Projects", 
          section = "projects", 
          indent = 2, 
          height = 9,
          padding = 1 
        },
        {
          pane = 2,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
              return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
      },
      },
    },
  },
}
