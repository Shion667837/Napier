## アプリ名
Napier ネイピア

## サイトロゴ
<img src="https://user-images.githubusercontent.com/68118250/128129897-e1df17c8-9e49-4ac4-88d9-b836db06691b.PNG" width="100px">

## 画像
<img src="https://user-images.githubusercontent.com/68118250/128132286-a44cc728-945b-4327-96eb-00e8e3d00a79.png" width="200px">

## 概要
Napierは、投資に特化したTwitterのような物で、現状はユーザーが色々な企業の株価のスクショと、その企業がどう収益を生んでるか、どのような事業を行なっているかを独自で分析し、パワーポイントでまとめたスクショと説明を投稿する事で他ユーザーがそれを参考にして投資を始めたり、様々な知識を共有したりする事を目的としています。このアプリケーションをきっかけに投資に興味を持ち始め、自分で自己資産を築き、投資をしている人たちの人口が増えれば良いなという思いで作成しました。

## こだわったところ
Twitterとの違いとしてユーザーが投稿する際に企業名を入れるとAIがそれを読み取って投稿後の詳細画面でAIが算出した結果を自動で右側に表記する仕様にしたかったのですが、現状、rails のアプリケーションにそれを組み込む知識がなく、同じスクショ画像を全ページ共通で表示しています。AIの部分はPythonエンジニアを目指している友人にお願いして分析してもらった結果のスクショを貼っている状態です。

実装したかったイメージとしては各投稿違う結果が右側に表示されている状態です。

また企業一覧から企業詳細ページに飛んだ際の右側の画像も本来Aiの算出結果を初期データとして保存しておいて表示させたかった所ですが、現状はそれが出来なかったため全企業共通のスクショにしています。

企業をお気に入りしてお気に入り一覧からその企業をクリックするとその企業について自分が分析した投稿画面に飛ぶ仕様にしましたが、現状TESLA社の分析結果しか作成出来なかったため、どの企業を押してもTESLA社の投稿ページに飛ぶようになっています。
## バージョン
* Ruby 3.0.0
* Rails 6.1.3

# 使用言語
* Ruby
* JavaScript
* Html
* Css

## 実装機能
### 投稿関連
* 一覧表示機能
* 詳細表示機能
* 削除機能
* 編集機能
* 画像拡大機能
* 人気投稿ランキング表示機能
* キーワード検索機能

### ユーザー関連
* 新規登録機能
* ログイン・ログアウト機能
* 編集機能
* 投稿・削除・編集機能
* コメント機能
* いいね機能

### 企業関連
* 一覧表示
* お気に入り機能

## その他
* rspec、capybaraによる簡易的なテストの導入

## 今後の計画
独学では習得しきれなかった、知識や技術を実際の現場で多く学び、読みやすい綺麗なコードを目指して、このポートフォリオを遥かに凌駕する機能を備えたアプリケーションを作成できるまでに成長し、教えてもらう立場から教えることができる立場になるまで日々、学んでいきたいです。
