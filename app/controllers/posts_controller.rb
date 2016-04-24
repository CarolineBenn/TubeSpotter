class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @class = @post.line.downcase.partition(" ").first
  end

  def new

  end

  def create

  end

  def edit
    
  end

  def update
    
  end

  def delete
    
  end


end
