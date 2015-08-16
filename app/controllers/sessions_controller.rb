class SessionsController < ApplicationController
  def login
  end

  def confirmation
  	@user = User.find_by_email(params[:email])

  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id 
  		redirect_to '/'
  	else 
  		@message = 'User account or password invalid'
  		render '/sessions/login'
  	end 
  end

  def logout
  	sessions[:user_id] = nil 
  	redirect_to '/users/login'
  end
end
