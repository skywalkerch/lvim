return {
    require("pluginsConfig.p-cmp-cmdline"),
    require("pluginsConfig.p-dap-nvim-go"),
    require("pluginsConfig.p-neoscroll"),
    require("pluginsConfig.p-colorizer"),
    --require("pluginsConfig.p-rnvimr"),
    require("pluginsConfig.p-nvim-markdown"),
    { 'Mofiqul/dracula.nvim' },

    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    {
        "p00f/nvim-ts-rainbow",
    },
    { 'mfussenegger/nvim-dap-python' },
    require("pluginsConfig.p-numb"),
    require("pluginsConfig.p-hop"),
    require("pluginsConfig.p-symbols-outline"),
    require("pluginsConfig.p-todo-comments"),
}
