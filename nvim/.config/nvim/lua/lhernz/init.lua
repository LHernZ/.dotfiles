local function init()
  require 'lhernz.vim'.init()
  require 'lhernz.packer'.init()
end

return {
  init = init,
}
