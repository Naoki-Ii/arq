# 入退室管理システム heytaisho

# Description
* 現状: 紙で入退室を管理
* 概要: この業務をwebシステム化する
​
# Development Environment
* Ruby 2.6.3
* Rails 6系
* データベースはMySQL
* docker環境構築
* https://qiita.com/yongjugithub/items/e5bbc84fcbbb1fd290c7
* プログラムはdockerイメージからコンテナをビルドして立ち上げる
* Dockerをインストールしているpcのターミナルから
```
git clone github-URL
docker-compose up --build
```
- 3.http://localhost:3000/ にアクセス
- 4.開発環境下でのアプリを表示可能
​
# データベース
* 1.受付(reception)テーブル
- 項目: 名前、目的、組織、更新時間、作成時間

# 画面構成(URL)
* トップ画面/受付登録画面 (receptions/new )
* 受付一覧画面 (receptions)

# Author
