# アプリ名：record-app
記録したメモを検索して確認できるアプリ

## アプリを作成した目的
お気に入りの記事やコードを記録したメモが大量になり、
都度確認するのが大変だなと日々思っておりました。
それらを記録して簡単に検索ができるアプリがあれば便利だと思い作成しました。

## 特徴

- slim/SASS記法を使ったマークアップ
- deviseを使わないユーザー管理
- ransackとacts-as-taggable-onを使用した検索機能
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
|description|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :user

## Tagsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true|
