class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_user

  def check_auth
    unless current_user
      redirect_to login_path
    end
  end

  def check_no_auth
    redirect_to root_path if current_user
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])

  end

  def is_authenticated?
    unless @current_user
      redirect_to login_path
    end
  end

end