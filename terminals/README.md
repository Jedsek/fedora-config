# Terminals
这是我关于Terminal的配置  
包含两个Terminal, 一个TM(终端复用器)  

- Terminal: Alacritty, Xfce4-terminal
- TM: Zellij

## Alacritty
**强推**  
`Alacritty` 是一个Rust编写的, 高性能的, 易于配置的terminal  
它采用GPU加速, 启动速度是所有终端最快的, 而且颜值极高  

配置如下:  
- 去除终端窗口的所有边框/标题
- 启动时最大化
- 打字时隐藏光标
- 设置透明度
- 主题为 `Nord`

我喜欢简洁的风格 :)  

缺点:  
Alacritty 以前, 现在, 以及未来都不会支持多标签页, 只支持单标签  

不过配合 `Zellij` 复用终端, 这根本不算事,甚至比支持多标签的终端, 更为强大  

## Xfce4-terminal
老牌终端, 也不错, 不过我个人更喜欢Alacritty  

配置与Alacritty是一样的

## Zellij
Rust编写的, 高性能, 高颜值, 易于配置与使用的终端复用器  

配置如下:
- 去除边框与提示栏
- 主题为 `Dracula`

常用快捷键如下:  
- `Ctrl-p`: 选中panel
  - `w`: 浮动窗口
  - `x`: 关闭当前panel
  - `d`: 向下的新分屏
  - `r`: 向右的新分屏
  - `n`: 新分屏, 自动分配方向与大小
- `Ctrl-t`: 选中tab
  - `n`: 新标签
  - `x`: 关闭当前标签
  - `1 - 9`: 切换到对应标签
- `Alt- hjkl`: 切换panel的焦点

  
