local pluginpath = vim.fn.stdpath("data") .. "/lazy/"
local function setup(path, project)
    local p = pluginpath .. path
    if not vim.loop.fs_stat(p) then
        vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "--single-branch",
            "https://github.com/" .. project .. ".git",
            p,
        })
    end
    vim.opt.rtp:prepend(p)
end

setup("lazy.nvim", "folke/lazy.nvim")
setup("aniseed", "Olical/aniseed")

vim.g["aniseed#env"] = { module = "core.init" }

