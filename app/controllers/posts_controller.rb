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
  end

  def create

  end

  def edit
    
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
