---@class svelte-tools.Commands
local M = {}

---@type table<string, fun(args: string[])>
M.commands = {
  watch = function()
    local str = "hello"
    vim.print(str)
  end,
}

-- Execute user command
---@param opts vim.api.keyset.create_user_command.command_args
function M.run(opts)
  vim.print(opts.fargs)
end

---@param args string
function M.parse(args)
  local parts = vim.split(vim.trim(args), "%s+")
  if parts[1]:find("SvelteTools") then
    table.remove(parts, 1)
  end
  if args:sub(-1) == " " then
    parts[#parts + 1] = ""
  end
end

return M
