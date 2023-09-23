lvim.builtin.nvimtree.active = false

lvim.plugins = {
    -- { "vimwiki/vimwiki" },
    -- { "lunarvim/colorschemes" },
    { "MunifTanjim/nui.nvim" },
    { "VonHeikemen/fine-cmdline.nvim" },
    { "ThePrimeagen/harpoon" },
    { "roobert/activate.nvim" },
    { "kdheepak/lazygit.nvim" },
    { "easymotion/vim-easymotion" },
    { "kylechui/nvim-surround" },
    { "rktjmp/lush.nvim" },
    { "ellisonleao/gruvbox.nvim" },
    { "rebelot/kanagawa.nvim" },
    { "rose-pine/neovim" },
    { "ribru17/bamboo.nvim" },
    { "sainnhe/everforest" },
    { "ThePrimeagen/vim-be-good" },
    { "catppuccin/nvim" },
    { "paretje/nvim-man" },
    { "nvim-tree/nvim-web-devicons" },
    { "lewis6991/gitsigns.nvim" },
    { "romgrk/barbar.nvim" },
    { "simrat39/rust-tools.nvim" },
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/vimwiki",
                            },
                            default_workspace = "notes",
                        },
                    },
                },
            }
        end,
    },
}
