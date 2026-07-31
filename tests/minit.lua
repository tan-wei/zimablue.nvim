#!/usr/bin/env -S nvim -l

local helpers = require("tests.helpers")
helpers.setup_rtp()

local tests = {}
local context = {}

local function context_name(name)
  local parts = {}
  for _, item in ipairs(context) do
    table.insert(parts, item.name)
  end
  table.insert(parts, name)
  return table.concat(parts, " ")
end

local function context_befores()
  local befores = {}
  for _, item in ipairs(context) do
    for _, callback in ipairs(item.before_each) do
      table.insert(befores, callback)
    end
  end
  return befores
end

function _G.describe(name, callback)
  table.insert(context, { name = name, before_each = {} })
  callback()
  table.remove(context)
end

function _G.before_each(callback)
  assert(#context > 0, "before_each must be called inside describe")
  table.insert(context[#context].before_each, callback)
end

function _G.it(name, callback)
  table.insert(tests, {
    name = context_name(name),
    before_each = context_befores(),
    callback = callback,
  })
end

for _, spec in ipairs({ "tests.colorscheme_spec", "tests.highlights_spec", "tests.extras_spec" }) do
  require(spec)
end

local failures = {}

for _, test in ipairs(tests) do
  local ok, err = xpcall(function()
    for _, callback in ipairs(test.before_each) do
      callback()
    end
    test.callback()
  end, debug.traceback)

  if ok then
    print("ok - " .. test.name)
  else
    table.insert(failures, { name = test.name, error = err })
    print("not ok - " .. test.name)
  end
end

if #failures > 0 then
  for _, failure in ipairs(failures) do
    vim.api.nvim_err_writeln("\n" .. failure.name .. "\n" .. failure.error)
  end
  os.exit(1)
end

print(string.format("%d tests passed", #tests))
