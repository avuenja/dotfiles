return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      'nvim-telescope/telescope-file-browser.nvim'
    },
    config = function()
      require("telescope").setup {
        pickers = {
          find_files = {
            theme = "dropdown"
          }
        },
        extensions = {
          fzf = {},
          file_browser = {
            theme = "ivy",
            hijack_netrw = true,
          }
        }
      }

      require("telescope").load_extension("fzf")
      require("telescope").load_extension("file_browser")

      vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags)
      vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
      vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics)
      vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_files)

      vim.keymap.set("n", "<leader>en", function()
        require("telescope.builtin").find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)
      vim.keymap.set("n", "<leader>ep", function()
        require("telescope.builtin").find_files {
          cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
        }
      end)

      vim.keymap.set("n", "<leader>fc", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>")
      vim.keymap.set("n", "<leader>fb", function()
        require("telescope").extensions.file_browser.file_browser()
      end)

      require "config.telescope.multigrep".setup()
    end,
  }
}
