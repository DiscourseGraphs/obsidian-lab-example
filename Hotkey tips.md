# Hotkey tips for Obsidian

Combos to avoid when assigning custom hotkeys, grouped by platform and interceptor.
"Mod" = Ctrl on Windows/Linux, Cmd on macOS.

---

## All platforms — Obsidian built-ins

Already bound by Obsidian; reassigning causes conflicts or silent collisions.

| Combo | Action |
|-------|--------|
| Mod+P | Command palette |
| Mod+N | New note |
| Mod+O | Quick switcher |
| Mod+Shift+F | Search all files |
| Mod+E | Toggle edit/reading view |
| Mod+, | Settings |
| Mod+W | Close tab |
| Mod+T | New tab |
| Mod+Tab / Mod+Shift+Tab | Cycle tabs |
| Mod+F | Find in file |
| Mod+H | Find & replace |
| Mod+B | Bold |
| Mod+I | Italic |
| Mod+K | Insert link |
| Mod+Z / Mod+Shift+Z | Undo / Redo |
| Mod+X / C / V | Cut / Copy / Paste |
| Mod+A | Select all |
| Mod+D | Delete line |
| Mod+G | Open graph view |

## All platforms — Electron internals

Electron intercepts these regardless of what Obsidian's hotkeys.json says.

| Combo | Action |
|-------|--------|
| Ctrl+Shift+I (Win/Linux) / Cmd+Option+I (Mac) | DevTools |
| Ctrl+R / Ctrl+Shift+R | Reload window |
| Ctrl+Shift+J | DevTools console |
| Ctrl++ / Ctrl+- / Ctrl+0 | Zoom in / out / reset |
| F11 (Win/Linux) | Fullscreen toggle |

---

## Linux

### IBus / Fcitx (input method — intercepted before Obsidian)

| Combo | Action |
|-------|--------|
| **Ctrl+Shift+U** | **Unicode code point entry — reliably breaks hotkeys** |
| Ctrl+Shift+E | Emoji input (IBus on some distros) |
| Ctrl+Space | Toggle input method (near-universal) |
| Shift+Space | Half/full-width toggle (CJK setups) |

### GNOME Shell / desktop environment

| Combo | Action |
|-------|--------|
| Super+* (any) | Almost all owned by GNOME Shell |
| Ctrl+Alt+T | Terminal |
| Ctrl+Alt+L | Lock screen |
| Ctrl+Alt+Delete | Session dialog |
| Ctrl+Alt+↑ ↓ ← → | Workspace switching |
| Alt+F2 | Run dialog |
| Alt+F4 | Close window |
| Alt+Tab / Alt+Shift+Tab | Window switcher |
| Ctrl+Alt+Backspace | Kill X server (if ZapNotKeyboard enabled) |

### X11 / TTY

| Combo | Action |
|-------|--------|
| Ctrl+Alt+F1–F12 | Switch virtual terminals |

### Safe zones on Linux
`Ctrl+Shift+Y/H/M/G/D` · `Alt+Shift+*` (mostly unclaimed) · `Ctrl+Alt+Y/H/M` (avoid F-keys and arrows)

---

## macOS

### System / Spotlight / Mission Control

| Combo | Action |
|-------|--------|
| Cmd+Space | Spotlight |
| Cmd+Tab | App switcher |
| Cmd+` | Window switcher within app |
| Cmd+Q | Quit app |
| Cmd+W | Close window |
| Cmd+M | Minimize |
| Cmd+H | Hide app |
| Cmd+Option+H | Hide other apps |
| Cmd+Option+Esc | Force quit dialog |
| Cmd+Option+D | Show/hide Dock |
| Ctrl+Up / Ctrl+Down | Mission Control / App Exposé |
| Ctrl+Left / Ctrl+Right | Switch Spaces |
| Cmd+Shift+3 / 4 / 5 | Screenshots / screen recording |
| Ctrl+Cmd+Space | Character viewer / emoji |
| Ctrl+Space | Switch input source |

### Function keys
F-keys on Mac default to hardware controls (brightness, volume, etc.) and are unreliable as bare hotkeys without Fn. Prefer Cmd/Ctrl combinations.

### Safe zones on macOS
`Cmd+Shift+Y/G/D` · `Ctrl+Shift+*` (most are free on Mac, unlike Linux) · `Cmd+Option+*` (check Mission Control settings first)

---

## Windows

### Win key (nearly all taken)

| Combo | Action |
|-------|--------|
| Win+L | Lock screen |
| Win+D | Show desktop |
| Win+E | File Explorer |
| Win+R | Run dialog |
| Win+S / Win+Q | Search |
| Win+Tab | Task View |
| Win+Space | Switch input language |
| Win+↑ ↓ ← → | Window snapping |
| Win+Shift+S | Snipping tool |
| Win+. / Win+; | Emoji picker |

### System / shell

| Combo | Action |
|-------|--------|
| Ctrl+Alt+Delete | Security screen |
| Ctrl+Shift+Esc | Task Manager |
| Ctrl+Esc | Start menu |
| Alt+Tab / Alt+Shift+Tab | Window switcher |
| Alt+F4 | Close window |
| Alt+Shift | Switch keyboard layout (if multiple languages installed) |
| Ctrl+Space | Toggle IME (CJK input methods) |

### Safe zones on Windows
`Ctrl+Shift+Y/H/M/G` · `Ctrl+Alt+Y/H/M` (avoid Delete and F-keys) · avoid all Win+* combos

---

## Quick reference — reliable safe combos across all platforms

| Combo | Notes |
|-------|-------|
| Mod+Shift+Y | Free on all three platforms |
| Mod+Shift+H | Free (Mac: avoid if using Hide-app muscle memory) |
| Mod+Shift+M | Free on all three |
| Mod+Shift+G | Free (Obsidian uses Mod+G for graph, not Mod+Shift+G) |
| Alt+Shift+* | Mostly free on Linux and Windows; check macOS Spaces |
