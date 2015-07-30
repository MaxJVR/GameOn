class UsersController < ApplicationController

  before_action :check_no_auth

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.persisted?
      redirect_to login_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,:name,:password)
  end

end
