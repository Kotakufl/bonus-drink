# BonusDrink

## 問題

ある駄菓子屋で飲み物を買うと、空き瓶3本で新しい飲み物を1本プレゼントしてくれる。

最初に購入した飲み物の本数から、トータルで飲める本数を算出するプログラムを作成せよ。

また、最初に100本購入した場合、トータルで何本飲めるか。

## 例

| 購入した本数 | 飲める本数 |
|-------------:|-----------:|
| 0            | 0          |
| 1            | 1          |
| 3            | 4          |
| 11           | 16         |
| 100          | (プログラムで算出する) |


## 解答方法について

1. このリポジトリを自分のアカウントにforkする。
2. Actionsタブで"I understand my workflows, go ahead and enable them"を押す。
3. forkした自分のリポジトリで、"my_answer"というブランチを切る。
4. "my_answer"ブランチで問題を解き、pushする。
5. GitHub Actions でSuccess(緑)になっていることを確認する。緑になっていなければ緑になるまでやり直す。

## ローカル環境でのテストの実行方法

````
bundle install
bundle exec rspec
````

## トラブルシューティング

### Actionsを有効化する前にpushしてしまった場合

1. Actionsタブで"Ruby"ワークフローを選択
2. "Run workflow"ボタンをクリック
3. ブランチ(`my_answer`)を選択して実行

## 参考 

[GitHub Actionsについて](https://docs.github.com/ja/actions)
