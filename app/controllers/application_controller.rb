class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #include ApplicationHelper

  helper_method :user_is_logged_in?

  def check_previledges?
    if !session[:user_id]
      flash[:error] = "Log In to Before Continue !!!"
      redirect_to root_path
    end
  end

  def user_is_logged_in?
    User.find_by_id(session[:user_id])
  end
end
