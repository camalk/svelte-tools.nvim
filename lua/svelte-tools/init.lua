local M = {}

---@param opts? svelte-tools.Config
function M.setup(opts)
  require("svelte-tools.config").setup(opts)
end

return M
