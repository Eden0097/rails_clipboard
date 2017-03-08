class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      flash[:notice] = 'Welcome, you are logged in'
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = 'There is something wrong with your Username or Password.'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You have logged out'
    redirect_to root_path
  end
end