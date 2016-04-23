class RegistrationsController < Devise::RegistrationsController

  @post = Post.last

  private

  def sign_up_params
    params.require(:user).permit(:username, :first_name, :last_name, :photo, :location, :gender, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :first_name, :last_name, :photo, :location, :gender, :email, :password, :password_confirmation, :current_password)
  end
end