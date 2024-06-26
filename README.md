## Docker Desktopアプリの起動とディレクトリ移動
まずはDocker Desktopアプリを起動してください。
起動後、ターミナル上でクローンしたディレクトリまで移動しましょう。

```bash
# クローンを実行したディレクトリにいる状態から。
$ cd xxxxx # ←先程クローンしたディレクトリ名を入力
```

## コンテナの立ち上げからコンテナ内に移動
次に以下のコマンドを実行してコンテナの立ち上げからコンテナ内への移動まで行ってください。

```bash
$ docker compose up

*docker compose upを実行しているターミナルとは別に新しくターミナルを立ち上げてください。新しいターミナルにて以下のコマンドを実行してください。
$ docker container exec -it ruby_advanced bash
```

## Rubyプログラムが動くかどうかの確認
コンテナ内へ移動できたらRubyプログラムが実行できるか以下のコマンドを実行して確認してください。
（`ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [x86_64-linux]`と表示されればOKです）

```
# ruby -v
```

<br />

---

<br />

### 手元で自動レビューと同じテストを実行する場合
- 各カリキュラムに掲載されているテストコード(zipファイル)をダウンロードします
- ダウンロードしたzipファイルを展開します
- 展開後、生成されたminitestフォルダをクローンしたディレクトリ配下にあるminitestと入れ替えます
- 上記の「Rubyプログラムが動くかどうかの確認」までを行う
- コンテナ内で「`ruby ./minitest/test.rb `」と打ち込む

### 手元で課題提出とは別のRubyプログラムを試す場合
- クローンしたディレクトリにRubyファイル(`xxx.rb`)を作成
- 作成したファイルにコードを記載
- 上記の「Rubyプログラムが動くかどうかの確認」までを行う
- コンテナ内で「`ruby xxx.rb`」と打ち込む
- ※自動レビュー提出の際は上記で使用したファイルは削除もしくはコミットに含めないようにしてください。

### コンテナ内から出る場合
コンテナ内から出る際は以下のコマンドを実行してください。

```
# exit
```
