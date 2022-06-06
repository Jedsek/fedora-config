# Shells

## 概述
- Shell: 采用 `Fish`
- Shell-Prompt: 采用 `Starship`

## Fish
Fish 是一个友好的shell, 提供了清晰简单的命令与配置方法  
我的配置文件分为 `completions` 与 `functions` 两个部分:

- completions: 对命令的补全
- functions: 新的命令, 或者某命令的别名, 或者改写某命令

completions就不说了, 我的functions配置如下:

- [Base](./fish/functions/base.fish)
  - `c`: 对 `clear` 的缩写
  - `e`: 对 `exa` 的缩写, 是一个Rust编写的高性能的 `ls` 的替代品
  - `mkd`: 对 `mkdir` 的缩写
  - `mkf`: 对 `touch` 的别名
  - `src`: 对 `source` 的缩写
  - `logout`: 从终端直接logout
- [Languages](./fish/functions/languages/)
  - [C](./fish/functions/languages/c.fish)
    - `pkg-config`: 由于某些坑点, `pkg-config` 无法正常使用, 应该改写
  - [Rust](./fish/functions/languages/rust.fish)
    - `co`: 将 `cargo` 别名为 `co`
  - [Vala](./fish/functions/languages/vala.fish)
    - `valac/vala`:  
        `valac` 默认使用旧的glib版本, 获得更强的兼容, 不过会发出警告  
        这不是valac本身发出, 而是c编译器对编译得到的c文件, 发出的警告  
        我们应忽略这些无效警告, 因为我们要关注的是vala的语义, 而非vala编译得来的c文件的语义  
        因此, 应传参给valac, 让它告诉c编译器快点闭嘴  
- [GNOME](./fish/functions/gnome.fish/)
  - `gpref`: 用于快速配置gnome-extensions的各种属性, 已启用completions  

## Starship
Starship 是一个Rust编写的, 高性能的Shell提示符工具  
配置文件: [starship.toml](./starship/starship.toml)