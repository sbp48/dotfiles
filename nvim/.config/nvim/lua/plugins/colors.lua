return {
  'norcalli/nvim-colorizer.lua',
  lazy=false,
  config = function ()
    require('colorizer').setup {
        '*'; -- Highlight all files, but customize some others.
        '!vim'; -- Exclude vim from highlighting.
    }
  end
}
