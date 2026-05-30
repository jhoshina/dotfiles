今後の設定ファイル（Neovimやi3wm、Starshipなど）でコピペして使い回せるよう、先ほどの **Gruvbox Dark (Medium)** パレットを `R,G,B` 形式から一般的な `#RRGGBB`（16進数カラーコード）形式に変換して表にまとめました。

あわせて、Gruvbox公式でのカラー名（変数名）も記載しています。

---

### Gruvbox Dark (Medium) カラーコード表

| 色名 (kmsconオプション名) | 16進数コード (`#RRGGBB`) | RGB値 (`R,G,B`) | Gruvbox公式名 | 主な用途 |
| --- | --- | --- | --- | --- |
| **palette-background** | `#282828` | `40,40,40` | `bg0` | 画面の背景色 |
| **palette-foreground** | `#ebdbb2` | `235,219,178` | `fg1` | 通常の文字色 |
| --- | --- | --- | --- | --- |
| **palette-black** | `#282828` | `40,40,40` | `bg0` | 黒（背景と同色） |
| **palette-red** | `#cc241d` | `204,36,29` | `red` | 赤（エラーなど） |
| **palette-green** | `#98971a` | `152,151,26` | `green` | 緑（成功・追加など） |
| **palette-yellow** | `#d79921` | `215,153,33` | `yellow` | 黄（警告など） |
| **palette-blue** | `#458588` | `69,133,136` | `blue` | 青 |
| **palette-magenta** | `#b16286` | `177,98,134` | `purple` | 紫 |
| **palette-cyan** | `#689d6a` | `104,157,106` | `aqua` | 水色 |
| **palette-white** | `#a89984` | `168,153,132` | `gray` | 淡いグレー |
| --- | --- | --- | --- | --- |
| **palette-dark-grey** | `#928374` | `146,131,116` | `gray (bright)` | コメント・非アクティブ文字 |
| **palette-light-red** | `#fb4934` | `251,73,52` | `red (bright)` | 明るい赤 |
| **palette-light-green** | `#b8bb26` | `184,187,38` | `green (bright)` | 明るい緑 |
| **palette-light-yellow** | `#fabd2f` | `250,189,47` | `yellow (bright)` | 明るい黄 |
| **palette-light-blue** | `#83a598` | `131,165,152` | `blue (bright)` | 明るい青 |
| **palette-light-magenta** | `#d3869b` | `211,134,155` | `purple (bright)` | 明るい紫 |
| **palette-light-cyan** | `#8ec07c` | `142,192,124` | `aqua (bright)` | 明るい水色 |
| **palette-light-grey** | `#ebdbb2` | `235,219,178` | `fg1` | 明るい白（強調文字など） |

---

### 他のツールで使う際のヒント

* **i3wm (`~/.config/i3/config`):** 枠線やバーの色指定に `#282828` や `#ebdbb2` がそのまま使えます。
* **Starship (`starship.toml`):** `[palettes.gruvbox]` のようにセクションを作ってこれらの16進数を登録すると、プロンプトを綺麗に統一できます。
* **Xresources (`~/.Xresources`):** もし将来的に `startx` 経由で `rxvt-unicode` や `xterm` などのGUIターミナルを使う場合は、`*color0: #282828` のように指定して使い回せます。
