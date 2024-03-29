-- return {
--     "neovim/nvim-lspconfig",
--     lazy = false,
--     init = function()
--         require("lspconfig").csharp_ls.setup({
--
--         })
--     end
-- }


return {
    "neovim/nvim-lspconfig",
    lazy = false,
    init = function()
        require("lspconfig").omnisharp.setup({
            handlers = {
                ["textDocument/definition"] = require('omnisharp_extended').handler,
            },
            cmd = { "dotnet", "/home/hudric/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll" },

            -- Enables support for reading code style, naming convention and analyzer
            -- settings from .editorconfig.

            new_lines_for_braces_in_types = false,
            new_lines_for_braces_in_methods = false,
            new_lines_for_braces_in_properties = false,
            new_lines_for_braces_in_accessors = false,
            new_lines_for_braces_in_anonymous_methods = false,
            new_lines_for_braces_in_control_blocks = false,
            new_lines_for_braces_in_anonymous_types = false,
            new_lines_for_braces_in_object_collection_array_initializers = false,
            new_lines_for_braces_in_lambda_expression_body = false,

            new_line_for_else = false,
            new_line_for_catch = false,
            new_line_for_finally = false,
            new_line_for_members_in_object_init = false,
            new_line_for_members_in_anonymous_types = false,
            new_line_for_clauses_in_query = false,
            enable_editorconfig_support = true,
            -- If true, MSBuild project system will only load projects for files that
            -- were opened in the editor. This setting is useful for big C# codebases
            -- and allows for faster initialization of code navigation features only
            -- for projects that are relevant to code that is being edited. With this
            -- setting enabled OmniSharp may load fewer projects and may thus display
            -- incomplete reference lists for symbols.
            enable_ms_build_load_projects_on_demand = false,

            -- Enables support for roslyn analyzers, code fixes and rulesets.
            enable_roslyn_analyzers = true,

            -- Specifies whether 'using' directives should be grouped and sorted during
            -- document formatting.
            organize_imports_on_format = true,

            -- Enables support for showing unimported types and unimported extension
            -- methods in completion lists. When committed, the appropriate using
            -- directive will be added at the top of the current file. This option can
            -- have a negative impact on initial completion responsiveness,
            -- particularly for the first few completion sessions after opening a
            -- solution.
            enable_import_completion = false,

            -- Specifies whether to include preview versions of the .NET SDK when
            -- determining which version to use for project loading.
            sdk_include_prereleases = true,

            -- Only run analyzers against open files when 'enableRoslynAnalyzers' is
            -- true
            analyze_open_documents_only = false,
        })
    end,
}
