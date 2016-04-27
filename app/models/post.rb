class Post < ActiveRecord::Base
  belongs_to :train
  belongs_to :user

  # after_save :update_user_points

  # def update_user_points 
  #   u = self.user
  #   sum = u.posts.inject(0) {|sum, post| sum += post.train.points}
  #   u.update_attributes(points: sum)  
  # end
end

