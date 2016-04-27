class UsersController < ApplicationController



  def index
    # .reverse so the newest member is first. Keeps things fresh.
    @users = User.all.reverse
    # This is where all the users are displayed EXCEPT current_user
    # @users = User.where.not(id: current_user.id)
  end

  def show
    @user = User.find(params[:id])  
    points = @user.posts.map{ |post| post.train.points } 
    @points = points.reduce(:+)
  end

  def new
  end

  def create
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user  
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def delete
  end

  private
    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :photo, :location, :points, :gender, :bio)  
    end


end
