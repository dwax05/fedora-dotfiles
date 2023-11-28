lvim.builtin.nvimtree.active = false

lvim.plugins = {
    { "projekt0n/caret.nvim" },
    { "sainnhe/gruvbox-material" },
    { "udalov/kotlin-vim" },
    { "MunifTanjim/nui.nvim" },
    { "ThePrimeagen/harpoon" },
    { "roobert/activate.nvim" },
    { "kdheepak/lazygit.nvim" },
    { "easymotion/vim-easymotion" },
    { "elkowar/yuck.vim" },
    { "kylechui/nvim-surround" },
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
    { "rafi/awesome-vim-colorschemes" },
    { "simrat39/rust-tools.nvim" },
    { "neovim/nvim-lspconfig" },
    { "lervag/vimtex" },
    { "yuratomo/w3m.vim" },
    { "luckasRanarison/tree-sitter-hypr" },
    { "LhKipp/nvim-nu" },
    { "Fymyte/rasi.vim" },
    { "waycrate/swhkd-vim" },
    { "ajouellette/sway-vim-syntax" },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
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

    -- { "Alexis12119/nightly.nvim" },
    -- { "kovetskiy/sxhkd-vim" },
}
