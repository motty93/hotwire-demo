## Rails 7 Hotwire on Docker
### technologies
- Ruby 3.1.2(slim image)
- PostgreSQL 14.2(alpine image)
- Redis(alpine image)
- Rails 7.0.2
- TailwindCSS

## Hotwire
- Turbo
  - Turbo Drive
  - Turbo Frames
  - Turbo Streams
  - Turbo Native(for mobile)
- Stimulus
- Strada(for mobile)
## Turbo
jsを書かずSPAのようなインタラクティブアプリケーションを実装できる。
### Turbo Drive
画面遷移を高速にしてくれる機能。
基本的な機能はTurbolinksと同じ。リンク、フォームのリクエストをTurbo Driveがインターセプトして、fetchによる非同期リクエストに差し替える。
通常の画面遷移がHTMLをまるごと変えるのに対して、Turbo Driveでは`<body>`だけを置換する（`<head>`の一部もマージされる）。
### Turbo Frames
Turbo Driveの部分置換版。
`<turbo-frame>...</turbo-frame>`というHTMLタグ部分のみ置換する。
### Turbo Streams
複数ヶ所のHTML要素を同時に更新できる。
Turbo Framesでは`<turbo-frame>`で囲った１箇所だけ更新という制約があるため、複数更新するときはTurbo Streamsを使用する。
追加・更新・削除が可能。
チャットも作れる。
### turbo-rails
Railsからturboを使用するためのgem。
turbo自体はjsのライブラリなのでrails依存ではない。
## Stimulus
Turboと相性がいいjsライブラリ。レールを敷いてくれるのでカオスにならない。
## Stradas
Hotwire用のモバイルアプリケーションライブラリ。まだ詳しいことはわからん。
