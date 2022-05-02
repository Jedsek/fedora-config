# GNOME

## 介绍

Fedora属于红帽一派, 而红帽又是GNOME的死忠， 因此, 官方支持的桌面环境只有GNOME :)  
这些是用于配置GNOME的脚本， 玩得开心!  

## 说明

以下配置结合了GNOME-Extensions, 可在 [GNOME-Extensions](./extensions) 中查看详情  


### 触摸板

包括GDM哦~  

- 轻触以模拟点击: 开启  
- 滑动速度: 提高  

### 工作区:  

结合了插件

- 颜值提高: 将左上角的 `Alacritty` 替换为工作区名称
- 名称设置: `Browser`, `Terminal`, `Builder`, `Boxes`, `Game`  
- 过渡动画: 消除按下 `Sup + "1|2|3|4|5"` 后出现的Animation  
- 窗口规则: 火狐启动后出现在 `Browser-1`, 终端启动后出现在 `Code-2`, Steam启动后出现在 `Game-3`  (待完善)


### 窗口管理器  

GNOME的WM是Mutter, 经大量折腾其实也能模拟Sway之辈  
但我不会配置成平铺式, 因为虽然炫酷, 但实际上只适合少数人  


> 默认隐藏顶栏, 毛玻璃模糊, 消除不必要的过渡动画, 消除Dash-Dock等  
> 借助脚本自定义快捷键, 如 `Sup+n` 切换工作区, `Sup+hjkl` 调整位置等  