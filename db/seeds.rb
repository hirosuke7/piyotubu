100.times do |index|
  Hiyoko.create(family_name: "ひよ", given_name: "太郎", email: "hiyoko_#{index}@sparta.com")
end

User.create(family_name: "八幡平", given_name: "太郎", email: "hachiman@taro.com", password: "hachimantaro")
User.create(family_name: "安比", given_name: "花子", email: "appi@hanako.com", password: "appihanako")
User.create(family_name: "岩手", given_name: "次郎", email: "iwate@jiro.com", password: "iwatejiro")

300.times do |comment|
  Comment.create(body: "#{comment}回目のコメントです。",
                 hiyoko_id: rand(100) + 1,
                 user_id: rand(3) + 1)
end
