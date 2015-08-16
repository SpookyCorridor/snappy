class UsersController < ApplicationController
  def register
  end

  def confirmation
  	@user = User.new(user_params)
  	if @user.save
  		session[:user_id] = @user.id
      redirect_to users_login_confirmation_path 
  	else 
  		@message = 'User account exists or passwords do not match'
  		render 'users/register'
    end
  end 

  private 

  	def user_params
  		params.require(:user).permit(:username, :email, :password, :password_confirmation)
  	end 
end
