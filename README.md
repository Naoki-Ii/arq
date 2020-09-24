# 入退室管理システム heytaisho

# Description
* 現状: 紙で入退室を管理
* 概要: この業務をwebシステム化する
* 機能: 受付画面から受付登録、一覧画面の閲覧、ログイン機能

# Development Environment
* Ruby 2.6.3
* Rails 6系
* データベースはMySQL
* CSSフレームワークは使用しない
* Dockerによる環境構築
* (https://qiita.com/yongjugithub/items/e5bbc84fcbbb1fd290c7)
* Dockerをインストールしているpcのコマンドラインから
```
git clone <URL>
docker-compose up --build
```
* http://localhost:3000/ にアクセス
​* テストフレームワークはRspec, ModelとRequest_Spec

# データベース
* 1.受付(reception)テーブル
- 項目: 名前、目的、組織、更新時間、作成時間
* 2.部屋(room)テーブル
- 項目: 名前、パスワード、更新時間、作成時間

# 画面構成(URL)
* 受付登録画面 ( /receptions/new )
* 受付一覧画面 ( /receptions )
* ログイン画面 ( /login )

# Author
