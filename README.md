# lunarvim user configure

**feature**

- Modular
- Obvious
- dracula theme
## step 1
[click](https://www.lunarvim.org/docs/installation) here to install lunarvim.
## step 2
remove your own user configure

`rm -rf ~/.config/lvim`
## step 3
`git clone https://github.com/skywalkerch/lvim.git ~/.config/lvim`

## step 4
start your lvim and insert `:PackerSyn`

**remember to set your git proxy,otherwise the process of `PackerSync` would be failed**

**Notice!**

if you want to put `cmp-cmdline` into operation 
you should add
```lua
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    {
      name = 'cmdline',
      option = {
        ignore_cmds = { 'Man', '!' }
      }
    }
  })
})
```

in `lvim/core/cmp.lua` after the following code
```lua
if lvim.builtin.cmp.cmdline.enable then
    for _, option in ipairs(lvim.builtin.cmp.cmdline.options) do
      cmp.setup.cmdline(option.type, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = option.sources,
      })
    end
  end
```
and I have set `cmp-cmdline` plugin config in my configure(this repo),then you can reload `lvim`
