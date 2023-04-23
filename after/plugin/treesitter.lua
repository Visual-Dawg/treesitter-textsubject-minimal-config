require'nvim-treesitter.configs'.setup {
    ensure_installed = {"help", "javascript", "typescript", "lua"},

    sync_install = false,

    auto_install = true,

    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["ia"] = "@parameter.inner",
                ["aa"] = "@parameter.outer"
            },
            include_surrounding_whitespace = true
        },
        move = {
            enable = true,
            goto_next_start = {
                [']m'] = '@function.outer'
            },
            goto_previous_start = {
                ['[m'] = '@function.outer'
            }
        }
    },

    endwise = {
        enable = true
    },

    textsubjects = {
        enable = true,
        prev_selection = ',',
        keymaps = {
            ['<cr>'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
            ['i;'] = 'textsubjects-container-inner'
        }
    }
}
