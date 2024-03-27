-- if true then return {} end

return {
    {
        'Exafunction/codeium.vim',
        event = "BufEnter",
        -- config = function()
        --     vim.keymap.set('i', '<C->', function() vim.fn['codeium#Accept']() end, {})
        -- end
    },
    {
        "L3MON4D3/LuaSnip",
        keys = {
            {
                "<C-Tab>",
                function()
                    return vim.fn["codeium#Accept"]()
                end,
                expr = true,
                silent = true,
                mode = "i",
            },
        },
    }
}

-- return {
--     {
--         'Exafunction/codeium.vim',
--         event = "BufEnter",
--         config = function()
--             vim.keymap.set('i', '<Tab>', function() return vim.fn['codeium#Accept']() end,
--                 { expr = true, silent = true })
--         end
--     },
-- }
