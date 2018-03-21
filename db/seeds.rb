User.create(family_name: "八幡平", given_name: "太郎", email: "hachiman@taro.com", password: "hachimantaro", image_url: "http://www.hachimantaishi.com/shokokai/taira/gallery/gallery/63.jpg")
User.create(family_name: "安比", given_name: "花子", email: "appi@hanako.com", password: "appihanako", image_url: "http://www.appi.co.jp/wp/wp-content/uploads/2014/04/gr_top_03.jpg")
User.create(family_name: "岩手", given_name: "次郎", email: "iwate@jiro.com", password: "iwatejiro", image_url: "http://www.appi.co.jp/wp/wp-content/uploads/2014/04/icecream.jpg")

300.times do |comment|
  Comment.create(body: "#{comment}回目のコメントです。",
                 hiyoko_id: rand(100) + 1,
                 user_id: rand(3) + 1)
end
