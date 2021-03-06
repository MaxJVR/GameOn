class UsersController < ApplicationController

  before_action :check_no_auth

  def index
  end

  def show
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    # update_games @user
    if @user.persisted?
      redirect_to login_path
    else
      render :new
    end
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:email,:name,:password)
  end

end
