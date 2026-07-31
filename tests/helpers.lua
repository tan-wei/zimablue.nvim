local M = {}

M.root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h")

function M.setup_rtp()
  vim.opt.runtimepath:prepend(M.root)
  package.path = M.root .. "/?.lua;" .. M.root .. "/?/init.lua;" .. M.root .. "/lua/?.lua;" .. M.root .. "/lua/?/init.lua;" .. package.path
end

function M.reset()
  for name in pairs(package.loaded) do
    if name == "zimablue" or name:match("^zimablue%.") then
      package.loaded[name] = nil
    end
  end
  vim.cmd("highlight clear")
  vim.g.colors_name = nil
  vim.o.background = "dark"
  for index = 0, 15 do
    vim.g["terminal_color_" .. index] = nil
  end
end

function M.hex(hex)
  return tonumber(hex:gsub("#", ""), 16)
end

function M.hl(name)
  return vim.api.nvim_get_hl(0, { name = name })
end

function M.assert_hl(name)
  local value = M.hl(name)
  assert(next(value) ~= nil, "expected highlight group " .. name .. " to be defined")
  return value
end

return M
