class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @class = @post.line.downcase.partition(" ").first
  end

  def new
    @post = Post.new
    @train = Train.all
    @line = ["Bakerloo", "Central", "Circle", "District", "Hammersmith & City", "Jubilee", "Metropolitan", "Northern", "Piccadilly", "Victoria", "Waterloo & City"]
  end


=begin
 @beer = Beer.new(beer_params)
   if @beer.save

     @review = @beer.reviews.new(review_params)
     @review.user = current_user
     @review.pub_id = session[:current_pub_id]
     @review.save
     redirect_to @beer
   else
     redirect_to new_beer_path
   end 
=end

  def create
    @post = Post.new(post_params)
    if @post.save
      @post.user = current_user
      @post.save 
      redirect_to @post
    else
      redirect_to new_post_path
    end
  end

  def edit
    @post = Post.find(params[:id])
    @train = Train.all
    @line = ["Bakerloo", "Central", "Circle", "District", "Hammersmith & City", "Jubilee", "Metropolitan", "Northern", "Piccadilly", "Victoria", "Waterloo & City"]
  end

  def update
    
  end

  def delete
    
  end

  private

  def post_params
    params.require(:post).permit(:title, :image, :description, :train_id, :line, :locatoin, :platform)    
  end


end
