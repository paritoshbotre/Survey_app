class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to surveys_path, notice: "Logged in Successfully"
    else
      flash[:error] = "Invalid Email or Password"
      render 'new'
    end
  end

  def destroy
    @user = session[:user_id] = nil
    redirect_to login_path, notice: "Log Out Successfully"
  end
end
