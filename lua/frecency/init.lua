---@type Frecency?
local frecency

return {
  setup = function(opts)
    frecency = require("frecency.frecency").new(opts)
    frecency:setup()
  end,
  start = function(opts)
    if frecency then
      frecency:start(opts)
    end
  end,
  complete = function(findstart, base)
    if frecency then
      return frecency:complete(findstart, base)
    end
  end,
  frecency = function()
    return frecency
  end,
}
