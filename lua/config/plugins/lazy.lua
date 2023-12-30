local lazy = {}

lazy.opt = {
    defaults = {
        lazy = true,
        version = "*",
    },
    install = {
        colorscheme = { "tokyonight-nigth" },
    },
}

lazy.path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
lazy.plugins = "plugins"

function lazy.install()
    if not vim.loop.fs_stat(lazy.path) then
        print("Installing lazy.nvim")
        vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim",
            "--branch=stable",
            lazy.path,
        })
    end
end

function lazy.setup()
    if vim.g.plugins_ready then
        return
    end
    lazy.install()
    vim.opt.rtp:prepend(lazy.path)
    require("lazy").setup(lazy.plugins, lazy.opts)
    vim.g.plugins_ready = true
end

lazy.setup()

return lazy
