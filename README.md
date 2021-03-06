# アプリケーション名
『Cocktail』

# アプリケーション概要
このアプリケーションはお酒に興味はあるけど何を飲んで良いかわからない、自分の好みのお酒は他にどんな種類があるのか参考にできるアプリです。

# URL
https://preference-cocktail-app.herokuapp.com/

# テスト用アカウント
アプリケーション内でゲストユーザーを選択してください。

# 利用方法
検索フォームで検索してください。
好きなカクテルを投稿する場合はログインして投稿してください。

## カクテル投稿
ヘッダーの右上のNewCocktailボタンをクリックするとカクテルの投稿をすることができます。記事の投稿に必須なのはカクテル名、ベースのお酒、味、グラスタイプ、度数です。それを全て入力するとカクテルを投稿することができます。

## 投稿カクテル一覧
投稿したカクテルはindexページに表示されます。

## カクテル検索機能
indexページ中央にある検索フォームでお好みによってカクテルの検索ができます。

## カクテル詳細機能
カクテル詳細ページでは、レシピや写真が見やすくなりカクテルや投稿者に対するコメントができます。投稿者はいつでもカクテルの編集や削除ができるようにしています。

## コメント機能
カクテルや投稿者に対してのコメントと削除ができるようになっています。

# 目指した課題解決
このアプリケーションは、昨今のお酒離れしている若者や、お酒初心者の方、色々なお酒を知りたい方に向けて「おすすめできる物は何か」、という暮らしをより豊かにできる機能を目指し作成しました。お酒に対するイメージがあまり良くないという方が増えている傾向があると思い、お酒の美味しさや楽しみ方を提供できるようなアプリケーションをこれからの追加実装によって実現しようと思っています。

# 洗い出した要件
優先順位（高：3、中：2、低：1）| 機能	| 目的	| 詳細	| ストーリー(ユースケース)	| 見積もり（所要時間）|
-|-|-|-|-|-|
2|ユーザー管理機能|アプリケーションでユーザーを作成できるように実装する|メールアドレス、ニックネーム、パスワードを設定できるようにする|ユーザーを識別するため、ユーザー新規登録とログインページを実装する|5時間
３|好み選択機能|自分に合うお酒を見つけるため|各項目に好みの質問があり、それぞれ選択していって統計を取り該当するお酒を表示する|ボタン選択をして統計を取りユーザーに最適な酒を表示させる|10時間
3|カクテル検索機能	好みのカクテルを検索できるようにするため|検索フォームで好みを入力するとそれに関連したカクテルが表示される|トップページに検索フォームを実装し、すぐに検索ができるようにする|8時間
2|カクテル投稿機能|ユーザーにおすすめしたいカクテルを投稿できるようにするため|カクテルの詳細やレシピを投稿できるようにする|カクテル名、ベースのお酒、グラスのタイプ、味、アルコールの強さを選択できるようにし、レシピや作り方を書き込めるようにする|5時間
1|カクテル詳細機能|カクテルのレシピを見やすくしたりコメントを打てるようにするため|カクテルレシピや画像を表示しコメント欄を実装|詳細を見やすくし、好きなコメントを打てるようにする|5時間
1|カクテル編集機能|カクテルを投稿したユーザーが投稿した内容を編集できるようにする|内容が間違っていたりした場合のために、投稿したユーザーは内容を編集できるようにする|カクテル詳細画面に投稿したユーザーだけに編集のページのリンクが存在する|3時間
1|カクテル削除機能|カクテルを投稿したユーザーが投稿した内容を削除することができるようにする|投稿したユーザーは自由に投稿したカクテルを削除することができるようにする|カクテル詳細画面に投稿したユーザーだけに削除のリンクが存在する|3時間
2|投稿一覧表示|投稿された内容を一覧できるようにするため|トップページで投稿された内容が一覧表示されるようにする|スクロールすると投稿されたカクテルが見れるようになる|2時間
1|コメント機能|コメントにより投稿内容に対する意見や他者のおすすめカクテル情報を共有できる様にするため|カクテル詳細ページにおいてコメントできる機能をつける|カクテルについてコメントできるようにする|3時間
2|DB設計|利用者情報と投稿内容、コメントの保存|利用者の投稿内容が保存ができるようにする|各テーブルに情報を保存できるようにする|6時間
3|View設計|見た目を整えるため|バーにいるような見た目を作る|飲んでみたいと思わせるような魅力的な見た目を表示する|10時間
1|履歴機能|過去にどんなカクテルを検索したか履歴が残るようにする|ユーザーマイページにユーザーの履歴が表示される|ユーザーマイページの履歴のリンクを押すとユーザーの履歴が一覧表示される|7時間




# 実装した機能について

## カクテル投稿機能
[![Image from Gyazo](https://i.gyazo.com/4b5e1305445484cab1c12053fb08d578.gif)](https://gyazo.com/4b5e1305445484cab1c12053fb08d578)

このように投稿することができます。


## カクテル一覧表示機能
[![Image from Gyazo](https://i.gyazo.com/91c65aac18908849c94432c302780b43.gif)](https://gyazo.com/91c65aac18908849c94432c302780b43)

このようにカクテルは一覧表示されます。投稿が新しいものが上から順に表示されます。


## カクテル検索機能
 
トップページ中央にある検索フォームを記入や選択すると、検索内容に近いカクテルが表示されます。


## カクテル詳細機能
[![Image from Gyazo](https://i.gyazo.com/e81a4119e4b0cf4e8331e376d5c6bd27.gif)](https://gyazo.com/e81a4119e4b0cf4e8331e376d5c6bd27)

このようにカクテル詳細表示されます。

## コメント機能
[![Image from Gyazo](https://i.gyazo.com/78e509ecc58e29e2350bf29737402d83.gif)](https://gyazo.com/78e509ecc58e29e2350bf29737402d83)

このようにコメントの投稿と削除ができます。


## マイページ

投稿者名をクリックすると、マイページへ遷移することができます。自分が投稿した記事、ユーザーの検索履歴や、ユーザーの編集のリンクなどが存在します。

# 実装予定機能

## 検索機能のアップデート
質問形式にして回答によってお好みのカクテルが表示されるようにします。

## 検索履歴表示
過去に検索した履歴がマイページで表示できるようにします。


# テーブル設計

## Users テーブル

| Column             | Type   | Options                        |
|--------------------|--------|--------------------------------|
| nickname           | string | null: false                    |
| email              | string | null: false, foreign_key: true |
| encrypted_password | string | null: false                    |

Association
 has_many :cocktails
 has_many :comments
 has_many :preferences

## Preferences テーブル

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| user_id     | references | null: false, foreign_key: true |
| cocktail_id | integer    | null: false, foreign_key: true |

Association
 belongs_to :user
 belongs_to :cocktail

## Cocktails テーブル

| Column          | Type    | Options     |
|-----------------|---------|-------------|
| cocktail_name   | string  | null: false |
| glass_id        | integer | null: false |
| base_alcohol_id | integer | null: false |
| taste_id        | integer | null: false |
| degree_id       | integer | null: false |
| cocktail_recipe | text    | null: false |
| image           |         | null: false |

Association
 belongs_to :user
 has_many   :preferences
 has_many   :comments

## Comments テーブル

| Column      | Type       | Options                         |
|-------------|------------|---------------------------------|
| cocktail_id | integer    | null: false                     |
| user_id     | references | null: false , foreign_key: true |
| text        | text       | null: false                     |

Association
 belongs_to :cocktail
 belongs_to :user