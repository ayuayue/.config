local wezterm = require 'wezterm'

wezterm.on('gui-startup', function(cmd)
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
    window:gui_window():set_position(400, 100)
end)
local c = {}



if wezterm.config_builder then
    c = wezterm.config_builder()
end

-- 初始大小
c.initial_cols = 120
c.initial_rows = 35

-- 关闭时不进行确认
-- c.window_close_confirmation = 'NeverPrompt'

-- 字体
c.font = wezterm.font 'LXGW WenKai Mono'
c.font_size = 14
c.line_height = 0.9

c.adjust_window_size_when_changing_font_size = false
c.automatically_reload_config = true


-- 配色
local materia = wezterm.color.get_builtin_schemes()['Vs Code Dark+ (Gogh)']
materia.scrollbar_thumb = '#cccccc' -- 更明显的滚动条
c.colors = materia

-- 透明背景
c.window_background_opacity = 0.95
-- 取消 Windows 原生标题栏
c.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- 滚动条尺寸为 15 ，其他方向不需要 pad
c.window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 5
}
-- 启用滚动条
c.enable_scroll_bar = true

-- 默认启动 MinGW64 / MSYS2
c.default_prog = {'nu.exe'}

-- 启动菜单的一些启动项
c.launch_menu = {{
    label = 'pwsh',
    args = {'pwsh.exe --nologo'}
}, {
    label = 'PowerShell',
    args = {'C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe'}
}, {
    label = 'CMD',
    args = {'cmd.exe'}
}}

-- 取消所有默认的热键
c.disable_default_key_bindings = true
local act = wezterm.action
c.keys = { -- Ctrl+Shift+Tab 遍历 tab
{
    key = 'Tab',
    mods = 'SHIFT|CTRL',
    action = act.ActivateTabRelative(1)
}, -- F11 切换全屏
{
    key = 'F11',
    mods = 'NONE',
    action = act.ToggleFullScreen
}, -- Ctrl+Shift++ 字体增大
{
    key = '+',
    mods = 'SHIFT|CTRL',
    action = act.IncreaseFontSize
}, -- Ctrl+Shift+- 字体减小
{
    key = '_',
    mods = 'SHIFT|CTRL',
    action = act.DecreaseFontSize
}, -- Ctrl+Shift+C 复制选中区域
{
    key = 'C',
    mods = 'SHIFT|CTRL',
    action = act.CopyTo 'Clipboard'
}, -- Ctrl+Shift+N 新窗口
{
    key = 'N',
    mods = 'SHIFT|CTRL',
    action = act.SpawnWindow
}, -- Ctrl+Shift+T 新 tab
{
    key = 'T',
    mods = 'SHIFT|CTRL',
    action = act.ShowLauncher
}, -- Ctrl+Shift+Enter 显示启动菜单
{
    key = 'Enter',
    mods = 'SHIFT|CTRL',
    action = act.ShowLauncherArgs {
        flags = 'FUZZY|TABS|LAUNCH_MENU_ITEMS'
    }
}, -- Ctrl+Shift+V 粘贴剪切板的内容
{
    key = 'V',
    mods = 'SHIFT|CTRL',
    action = act.PasteFrom 'Clipboard'
}, -- Ctrl+Shift+W 关闭 tab 且不进行确认
{
    key = 'W',
    mods = 'SHIFT|CTRL',
    action = act.CloseCurrentTab {
        confirm = false
    }
}, -- Ctrl+Shift+PageUp 向上滚动一页
{
    key = 'PageUp',
    mods = 'SHIFT|CTRL',
    action = act.ScrollByPage(-1)
}, -- Ctrl+Shift+PageDown 向下滚动一页
{
    key = 'PageDown',
    mods = 'SHIFT|CTRL',
    action = act.ScrollByPage(1)
}, -- Ctrl+Shift+UpArrow 向上滚动一行
{
    key = 'UpArrow',
    mods = 'SHIFT|CTRL',
    action = act.ScrollByLine(-1)
}, -- Ctrl+Shift+DownArrow 向下滚动一行
{
    key = 'DownArrow',
    mods = 'SHIFT|CTRL',
    action = act.ScrollByLine(1)
}}

return c
