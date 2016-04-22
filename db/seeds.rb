User.destroy_all
Post.destroy_all
Train.destroy_all

u1 = User.create!(username: 'LineyB', first_name: 'Caroline', last_name: 'Benn', photo: 'https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e15/1740048_401520313324752_1881881684_n.jpg', location: 'Ealing, London', points: 0, email: 'lineybenn@gmail.com', password: 'password')

u2 = User.create!(username: 'SvenTheMoose', first_name: 'Sven', last_name: 'Moose', photo: 'https://scontent-lhr3-1.xx.fbcdn.net/t31.0-8/11722174_10153858860739239_8277116210826384570_o.jpg', location: 'Ealing, London', points: 0, email: 'sven@moose.com', password: 'password')


p1 = Post.create!(title: '1960s track recording stock at Earl\'s Court', image: 'https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e15/11355906_683547105084217_1024776887_n.jpg', description: 'London Underground\'s Track Recording Train, train 776, is made up of two 1960s Cravens tube stock and TRC666 which is a 1973 trailer car.', user_id: 1, train_id: 1, line: 'District', location: 'Earl\'s Court', platform: 2)

p2 = Post.create!(title: 'C77 Stock at Ladbroke Grove', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/C_Stock_at_Ladbroke_Grove_1.jpg/1920px-C_Stock_at_Ladbroke_Grove_1.jpg', description: 'This is unit 5520.', user_id: 1, train_id: 2, line: 'Hammersmith & City', location: 'Ladbroke Grove', platform: 2)

p3 = Post.create!(title: 'Lovely D78 Stock', image: 'http://tube-history-beta.dslack.co.uk/assets/images/rolling-stock/d78/refurbished.jpg', description: 'My favourite train!', user_id: 2, train_id: 3, line: 'District', location: 'Upminster', platform: 4, )

p4 = Post.create!(title: 'Old D78 Stock at Turnham Green', image: 'http://tube-history-beta.dslack.co.uk/assets/images/rolling-stock/d78/refurbished.jpg', description: 'Spotted this bad boy this morning', user_id: 2, train_id: 3, line: 'District', location: 'Turnham Green', platform: 4, )


t1 = Train.create!(stock: 'Track Recording Train', image: 'https://i.ytimg.com/vi/m9HgPB6GNjc/maxresdefault.jpg')

t2 = Train.create!(stock: 'C77', image: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRsi65lAlhvlOqxwtr10yMCXKZVlu3Ydb1H3rIOv1Po2jbHt2InNw')

t3 = Train.create!(stock: 'D78', image: 'http://paulbigland.zenfolio.com/img/s/v-3/p187557820-3.jpg')











