return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count


    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = "auto",
        icons_enabled = true,
      },
      disabled_filetypes = {
        statusline = { 'NvimTree', 'alpha', 'outline'},
        winbar = { 'alpha', 'Nvim-tree', 'outline' }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    })
  end,
}
