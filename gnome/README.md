# GNOME
Fedora 属于红帽一派, 而红帽又是GNOME的死忠  
因此, 官方支持的桌面环境只有GNOME :)  

以下配置结合了GNOME-Extensions, 可在 [extensions/list](./extensions/list) 中查看详情  

祝你玩得开心!  

## Touchpad
包括GDM哦~  

- 开启了轻触模拟点击
- 滑动速度提高

## Workspace:
- 名称设置: `Browser`, `Terminal`, `Game`, `Boxes`, `Other`
- 过渡动画: 消除按下 `Sup + "1|2|3|4|5"` 后出现的Animation
- 窗口规则: Firefox, Alacritty, Steam启动后会出现到对应的工作区

## Overview
- 消除了Dash-Dock
- 消除了鼠标悬停于窗口时, 会出现的提示信息
- 按下空格进入 跳转窗口/关闭窗口模式, 字母为跳转, Shift+字母为关闭

## Topbar
- 默认隐藏顶栏
- 替换左上角为Workspace的名称

## Windows Manager
GNOME的WM是Mutter, 经大量折腾其实也能模拟Sway之辈  
但我不会配置成平铺式, 因为虽然炫酷, 但实际上只适合少数人  

- `Sup+n` 切换工作区
- `Sup+hjkl` 调整位置