入退室管理システム heytaisho

Description
* 現状: 紙で入退室を管理
* 概要: この業務をwebシステム化する
​
Development Environment
* ruby 2.6.3
* Rails 6系
* データベースは開発、本番環境共にMYSQL
* docker環境構築
* https://qiita.com/yongjugithub/items/e5bbc84fcbbb1fd290c7
* プログラムはdockerイメージからコンテナをビルドして立ち上げる
* 例)
- 1.git clone github-URL
- 2.docker-compose up --build
- 3.http://localhost:3000/ にアクセス
​
DATABASE
* receptionテーブル カラム: name, purpose, company, timestamps

Author
