# 链接配置文件

执行 set-config.bat 即可把当前目录软连接到 ~/.config/wezterm



# 配置文件加载顺序

## 方式：
1. --config-file
2. $WEZTERM_CONFIG_FILE 环境变量
3. 在 wezterm.exe 同目录下的 wezterm.lua 文件
4. 最后才是 $HOME/.config/wezterm/wezterm.lua


## 覆盖配置项：

```
 wezterm --config enable_scroll_bar=true
 wezterm --config 'exit_behavior="Hold"'
 ```


# 配置文件结构：

```lua
local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Batman'
config.font = wezterm.font 'JetBrains Mono'
return config
```

# 拆分配置文件

配置文件扫描路径：
1. 与 wezterm.exe 同目录的 wezterm_modules 目录下
2. ~/.config/wezterm
3. ~/.wezterm

比如：~/.config/wezterm/helpers.lua
```lua
-- I am helpers.lua and I should live in ~/.config/wezterm/helpers.lua

local wezterm = require 'wezterm'

-- This is the module table that we will export
local module = {}

-- This function is private to this module and is not visible
-- outside.
local function private_helper()
  wezterm.log_error 'hello!'
end

-- define a function in the module table.
-- Only functions defined in `module` will be exported to
-- code that imports this module.
-- The suggested convention for making modules that update
-- the config is for them to export an `apply_to_config`
-- function that accepts the config object, like this:
function module.apply_to_config(config)
  private_helper()

  config.color_scheme = 'Batman'
end

-- return our module table
return module
```

使用
```lua
local helpers = require 'helpers'
local config = {}
helpers.apply_to_config(config)
return config
```