User.destroy_all
Post.destroy_all
Train.destroy_all

u1 = User.create!(username: 'LineyB', first_name: 'Caroline', last_name: 'Benn', photo: 'https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e15/1740048_401520313324752_1881881684_n.jpg', location: 'Ealing, London', bio: "Love the tube, except for the Metropolitan line. This cannot be explained.", points: 0, email: 'lineybenn@gmail.com', password: 'password')

u2 = User.create!(username: 'SvenTheMoose', first_name: 'Sven', last_name: 'Moose', photo: 'https://scontent-lhr3-1.xx.fbcdn.net/t31.0-8/11722174_10153858860739239_8277116210826384570_o.jpg', location: 'Ealing, London', points: 0, email: 'sven@moose.com', password: 'password')


p1 = Post.create!(title: '1960s track recording stock at Earl\'s Court', image: 'https://scontent-lhr3-1.cdninstagram.com/t51.2885-15/e15/11355906_683547105084217_1024776887_n.jpg', description: 'London Underground\'s Track Recording Train, train 776, is made up of two 1960s Cravens tube stock and TRC666 which is a 1973 trailer car.', user_id: 1, train_id: 1, line: 'District', location: 'Earl\'s Court', platform: 2)

p2 = Post.create!(title: 'C77 Stock at Ladbroke Grove', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/C_Stock_at_Ladbroke_Grove_1.jpg/1920px-C_Stock_at_Ladbroke_Grove_1.jpg', description: 'This is unit 5520.', user_id: 1, train_id: 2, line: 'Hammersmith & City', location: 'Ladbroke Grove', platform: 2)

p3 = Post.create!(title: 'Lovely D78 Stock', image: 'http://tube-history-beta.dslack.co.uk/assets/images/rolling-stock/d78/refurbished.jpg', description: 'My favourite train!', user_id: 2, train_id: 3, line: 'District', location: 'Upminster', platform: 4, )

p4 = Post.create!(title: 'Old D78 Stock at Turnham Green', image: 'http://tube-history-beta.dslack.co.uk/assets/images/rolling-stock/d78/refurbished.jpg', description: 'Spotted this bad boy this morning', user_id: 2, train_id: 3, line: 'District', location: 'Turnham Green', platform: 4, )


# Trains:

t1 = Train.create!(stock: 'Track Recording Train', image: 'https://i.ytimg.com/vi/m9HgPB6GNjc/maxresdefault.jpg', points: 10)

t2 = Train.create!(stock: 'C77', image: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRsi65lAlhvlOqxwtr10yMCXKZVlu3Ydb1H3rIOv1Po2jbHt2InNw', points: 10)

t3 = Train.create!(stock: 'D78', image: 'http://paulbigland.zenfolio.com/img/s/v-3/p187557820-3.jpg', points: 2)


t4 = Train.create(stock: '1972 stock', image: 'http://static.progressivemediagroup.com/uploads/imagelibrary/HSL-TPR008%20(CCS%20for%20Central%20Line%20-%20train%20photo).JPG', points: 2) # Bakerloo line

t4 = Train.create!(stock: '1992 stock', image: 'https://upload.wikimedia.org/wikipedia/commons/8/85/London_Underground_1992_Stock_at_Theydon_Bois_by_tompagenet.jpg', points: 1)

t5 = Train.create!(stock: "Maintenance train", image: 'image.jpg', points: 8)

t6 = Train.create!(stock:'A60' , image:'image.jpg' , points: 10)        # Metropolitan line (old)
t7 = Train.create!(stock:'A62' , image:'image.jpg' , points: 10)        # Metropolitan line (old)

t8 = Train.create!(stock:'S7' , image:'image.jpg' , points: 2)          # Circle & District lines
t9 = Train.create!(stock:'S8' , image:'image.jpg' , points: 2)          # Metropolitan lines
t9 = Train.create!(stock:'1996 stock' , image:'image.jpg' , points: 2)  # Jubilee line
t9 = Train.create!(stock:'1995 stock' , image:'image.jpg' , points: 2)  # Northern line
t9 = Train.create!(stock:'1973 stock' , image:'image.jpg' , points: 2)  # Piccadilly line
t9 = Train.create!(stock:'2009 stock' , image:'image.jpg' , points: 2)  # Victoria line
t9 = Train.create!(stock:'1967 stock' , image:'image.jpg' , points: 10) # Victoria line (old)

# NOTE:
# When seeding this file you need to comment out the update_user_points method in post.rb


=begin
 √ maintenance train
 √ track recording train (776)
 √ metropolitan a60
 √ metropolitan a62

 √ bakerloo    
 √ central     
 √ circle      
 √ district    
 √ hammersmith 
 √ jubilee     
 √ s7 (district & circle)
 √ metropolitan s8
 √ nothern     
 √ piccadilly  
 √ victoria    
 √ waterloo    
=end









