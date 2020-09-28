# 以下コマンドで初期データ投入
# docker-compose run web rails db:reset && docker-compose run web rails db:seed
# 本番環境: rails db:create && rails db:migrate && rails db:seed

room = Room.new(
  name: 'toranomon',
  password: 'androbo',
  password_confirmation: 'androbo'
  )
room.save

# 関連テーブルの作成は紐づくモデルのIDの変更に注意すること
# 本番環境のMYSQLでは仕様によりIDが連番ではなく10ごとに飛ぶため文法エラーに注意
16.times do |n|
  Reception.create!(
    name: "sample visiter",
    purpose: "面談"
  )
end
