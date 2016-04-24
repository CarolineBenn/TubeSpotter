class UsersController < ApplicationController



  def index
    # .reverse so the newest member is first. Keeps things fresh.
    @users = User.all.reverse
  end

def show
  @user = User.find(params[:id])  
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
