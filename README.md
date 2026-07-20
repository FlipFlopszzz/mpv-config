# mpv-config

一个面向 Windows 本地媒体播放的 mpv 配置：启动直接播放、键鼠操作简洁，并使用下移的 Fluent 风格浮动控制条。

> 基于 mpv `v0.41.0-744-g304426c39` 测试。`scripts/osc.lua` 是对应 mpv 版本内置 OSC 的修改版，因此本仓库采用 GPL-2.0-or-later 许可。

## 功能

- 硬件解码、断点续播、音量上限 100%、单文件循环播放；
- `Esc`：全屏时退出全屏；窗口模式时退出播放器；
- 左键或 `Space`：播放 / 暂停；左键双击：切换全屏；
- `←` / `→` 或 `A` / `D`：后退 / 前进 5 秒，并显示浮动控制条；
- `↑` / `↓` 或 `W` / `S`：调节音量，并显示浮动控制条；
- `-` / `=`：每次减少 / 增加 `0.1×` 倍速；`Backspace`：恢复 `1.0×`；
- `Ctrl + E`：在 Windows 资源管理器中定位并选中当前本地媒体文件；
- 现代 Fluent 风格浮动 OSC：进度条、时间、播放控制、音量图标、可拖动音量条及音量数值；
- 音轨和字幕选择控件已从浮动 OSC 中移除。

## 安装

1. 从 [mpv 官网安装页](https://mpv.io/installation/) 所列的 Windows 构建源下载并解压 mpv。
2. 将本仓库的所有文件复制到 mpv 的配置目录：

   ```text
   %APPDATA%\mpv
   ```

   通常对应：

   ```text
   C:\Users\<用户名>\AppData\Roaming\mpv
   ```

3. 完全退出后重新打开 mpv。

目录结构：

```text
mpv/
├── input.conf
├── mpv.conf
├── script-opts/
│   └── osc.conf
└── scripts/
    ├── escape-fullscreen-or-quit.lua
    ├── osc.lua
    └── reveal-current-file.lua
```

## 说明

- `scripts/osc.lua` 是 mpv 内置 OSC 的定制副本。升级 mpv 后，它不会自动获得上游 OSC 的新功能；如需更新，建议以新版本的内置 `osc.lua` 为基准重新应用本仓库的布局修改。
- 播放历史、断点记录和缓存已在 `.gitignore` 中排除，不会纳入仓库。

## 许可证

本项目采用 [GPL-2.0-or-later](LICENSE) 许可证。