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
      params.require(:user).permit(:username, :first_name, :last_name, :photo, :location, :points, :gender)  
    end


end
