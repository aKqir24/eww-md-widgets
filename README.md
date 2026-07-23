<div align="center">

# eww-md-widgets

A collection of Material 3 styled widgets for [EWW](https://github.com/elkowar/eww).

Built by closely following the [Material 3 Design](https://m3.material.io/) guidelines. Most of the backend is written with AI assistance and the design is partially customized.

> If you have interesting widget ideas, feel free to open a pull request!

</div>

---

## Dependencies

| Package | Description |
|---------|-------------|
| `eww` | Widget system |
| `matugen` | Material You color generation |
| `jq` | JSON processing |
| `xdotool` | X11 automation |
| `fonts-material-design-icons-iconfont` & `Any NF-Fonts` | for some icons used in widgets |

## Setup

### Usage

Run the toggle script from the eww config folder:

```bash
bash path/to/eww/config/toggle.sh [widgetname]
```

### Matugen Configuration

Add the following to your matugen config:

```toml
[templates.eww]
input_path = '~/.files/resources/matugen-themes/templates/eww.scss'
output_path = '~/.cache/matugen/eww-colors.scss'
```

## Folder Structure

```
.
├── scripts/          # Scripts used for all widgets
├── toggle.sh         # Widget toggle script (no modification needed)
├── variables.yuck    # Global widget variables
├── eww.scss          # Global widget styles
├── eww.yuck          # Global widget layout
└── widgets/
    └── bar/          # Example widget folder
        ├── scripts/  # Widget-specific scripts
        ├── eww.scss  # Widget styles
        ├── eww.yuck  # Widget layout
        └── launch.sh # Widget launch script
```

## Widget Progress

- [ ] WiFi
- [ ] Bluetooth
- [ ] Audio Controls
- [x] Power Menu 
- [ ] Status Bar *(in progress)*
    - [x] System Resource Tooltip
    - [x] Calendar
    - [x] Time & Date
    - [x] Screen Timeout (it is like caffaine)
    - [ ] Audio Control
    - [ ] App Launcher Module
    - [ ] System Tray
- [ ] App Launcher *(in progress)*
- [ ] Emoji Menu *(in progress)*
