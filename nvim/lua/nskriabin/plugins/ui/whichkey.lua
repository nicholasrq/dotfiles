return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500

    local wk = require("which-key")

    local config = {
      defaults = {},
      plugins = {
        marks = true,
        registers = true,
        spelling = {
          enabled = true,
          suggestions = 20,
        },
        presets = {
          operators = true,
          motions = true,
          text_objects = true,
          windows = true,
          nav = true,
          z = true,
          g = true,
        },
      },
    }

    local n_mapping = {
      ["q"] = { name = "+Quit" },
      ["b"] = { name = "+Buffers" },
      ["c"] = { name = "+Code Actions" },
      ["d"] = { name = "+Debug" },
      ["f"] = { name = "+Files" },
      ["g"] = { name = "+Git(Hub)" },
      ["h"] = { name = "+Harpoon" },
      ["n"] = { name = "+Swap Next" },
      ["p"] = { name = "+Swap Previous" },
      ["s"] = { name = "+Search" },
      ["u"] = { name = "+UI" },
      ["x"] = { name = "+Diagnostics" },
      ["o"] = { name = "+Octo" },
      ["op"] = { name = "+Octo PR" },
      ["or"] = { name = "+Octo Review" },
      ["m"] = { name = "+Marks" },
    }
    local v_mapping = {
      ["c"] = { name = "+Code Actions" },
      ["s"] = { name = "+Search" },
    }

    wk.setup(config)
    wk.register(n_mapping, {
      prefix = "<leader>",
    })

    wk.register(v_mapping, {
      prefix = "<leader>",
      mode = "v",
    })
  end,
}
