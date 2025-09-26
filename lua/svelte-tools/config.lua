---@class svelte-tools.Config.mod: svelte-tools.Config
local M = {}

---@class svelte-tools.Config
local defaults = {}

---@type svelte-tools.Config
local options

---@param opts? svelte-tools.Config
function M.setup(opts)
  ---@type svelte-tools.Config
  options = vim.tbl_deep_extend("force", {}, options or defaults, opts or {})

  vim.api.nvim_create_user_command("SvelteTools", function(...)
    require("svelte-tools.commands").run(...)
  end, {
    nargs = "*",
    desc = "svelte-tools.nvim",
  })
end

return M
