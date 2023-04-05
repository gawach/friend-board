# ユーザー
	# 管理者ユーザー
User.create!(
	name: "admin",
	email: "admin@admin.com",
	password: "admin",
	password_confirmation: "admin",
	admin: true
)
	# テストユーザー(10人)
10.times do |num|
				User.create!(
					name: "test#{num}",
					email: "test#{num}@test#{num}.com",
					password: "test#{num}",
					password_confirmation: "test#{num}",
					admin: false
				)
end

# プロフィール
  # admin
Profile.create!(
	online_code: "admin",
	current_rank: "プレデター",
	best_rank: "プレデター",
	frequency: "毎秒",
	enjoy: 0,
	user_id: 1,
	created_at: "2023-04-05 12:00:00",
	updated_at: "2023-04-05 12:00:00",
	game_title: "Apex Legends",
	favorite_character: "レイス"
)

# ゲームタイトル
  # Apex Legends
Game.create!(
	title: "Apex Legends"
)
	# Valorant
Game.create!(
	title: "VALORANT"
)
	# Rainbow Six Siege
Game.create!(
	title: "Rainbow Six Siege"
)

# 掲示板
  # Apex Legends
Board.create!(
  target_rank: "マスター",
	recruit_number: 2,
	content: "ガチ勢求む。",
	created_at: "2023-04-05 12:00:00",
	updated_at: "2023-04-05 12:00:00",
	game_id: 1,
	user_id: 1
)
  # 参加ユーザー
Party.create!(
	join_id: 2,
	board_id: 1,
	created_at: "2023-04-05 12:00:00",
	updated_at: "2023-04-05 12:00:00"
)