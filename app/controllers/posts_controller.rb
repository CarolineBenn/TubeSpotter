class PostsController < ApplicationController

  def index
    @posts = Post.all
    @rolling_stock = Train.all
  end

  def show
    @post = Post.find(params[:id])
    @class = @post.line.downcase.partition(" ").first
    @rolling_stock = @post.train
  end

  def new
    @post = Post.new
    # Y U NO WORK?
    @rolling_stock = Train.all

    @line = ["Bakerloo", "Central", "Circle", "District", "Hammersmith & City", "Jubilee", "Metropolitan", "Northern", "Piccadilly", "Victoria", "Waterloo & City"]
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save 
      redirect_to @post
    else
      redirect_to new_post_path
    end
  end

  def edit
    @post = Post.find(params[:id])
    @rolling_stock = @post.train
    @line = ["Bakerloo", "Central", "Circle", "District", "Hammersmith & City", "Jubilee", "Metropolitan", "Northern", "Piccadilly", "Victoria", "Waterloo & City"]
  end

  def update
    @post = Post.find(params[:id])
    @post.train_id = @rolling_stock

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def delete
    
  end

  private

  def post_params
    params.require(:post).permit(:title, :image, :description, :train_id, :line, :locatoin, :platform)    
  end


end
