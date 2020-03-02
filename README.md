# アプリ名：record-app
記録したデータを検索して確認できるアプリ

https://record-app2.herokuapp.com/
ログインID: admin@example.com
パスワード: password

![92e3b0ceb7311724c0ab07dda23c05f1](https://user-images.githubusercontent.com/57203539/75569205-098d3780-5a98-11ea-854c-fd022fde9054.png)

![fdf35c40cd788a69df55029d05bf23f5](https://user-images.githubusercontent.com/57203539/75569832-3aba3780-5a99-11ea-99f0-e05c7dbe8fda.png)

![タグ検索](https://user-images.githubusercontent.com/57203539/75569589-bf588600-5a98-11ea-8556-aec702874762.gif)

## アプリを作成した目的
お気に入りの記事やコードを記録したメモが大量になり、
都度確認するのが大変だなと日々思っておりました。
それらを記録して簡単に検索ができるアプリがあれば便利だと思い作成しました。

## 特徴

- slim/SASS記法を使ったマークアップ
- deviseを使わないユーザー管理
- ransackとacts-as-taggable-onを使用した検索機能
- 記録した内容をcsvファイルでエクスポートできる
- herokuへのデプロイ
- AWS S3への画像アップロード
- RSpecを使ったシステムテスト

## Requirement

- Ruby 2.5.1
- Rails 5.2.1


## Usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password_digest|string|null: false|
|admin|boolean|default: false, null: false|

### Association
- has_many :tasks

## Tasksテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|text|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :user

## Tagsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true|
|taggings_count|integer|default: 0|

## Taggingsテーブル
|Column|Type|Options|
|------|----|-------|
|context|string|limit: 128|



