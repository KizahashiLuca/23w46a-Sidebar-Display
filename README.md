# 23w46a Sidebar Display Datapack
## 日本語説明
このデータパックは [Minecraft Snapshot 23w46a](https://www.minecraft.net/ja-jp/article/minecraft-snapshot-23w46a) で実装された、スコアボードの数値に任意のテキストを表示する機構を使うことにより、高品位な情報表示GUIを提案するものです。

スコアボードの数値の大小によらず、常に同じ位置にスコアボードの数値や文字情報を表示する事ができます。

現状(23w46a)では、スコアボードの数値としてはJSONのテキストしか使えません。  
そのため、複数のスコアボードの数値を表示させたい場合やスコアボードの数値が頻繁に変化する場合には、`ストレージ`にスコアボードの数値を格納して、`マクロ`でテキストとして取り出すことで、いかようにも表示することができます。

- 使用する機能
  - データパック
  - スコアボード
  - ストレージ
  - マクロ

## English
This data pack proposes a high quality information display GUI by using the mechanism implemented in [Minecraft Snapshot 23w46a](https://www.minecraft.net/ja-jp/article/minecraft-snapshot-23w46a) to display arbitrary text on scoreboard numbers.

By using the process proposed in this datapack, scoreboard numbers and text information can always be displayed at the same position, regardless of the size of the scoreboard numbers.

Therefore, if you want to display multiple scoreboard values or if the scoreboard values change frequently, you can store the scoreboard values in `storage` and retrieve them as text using a `macro`.

- Functions used
  - Data Pack
  - Scoreboard
  - Storage
  - Macro