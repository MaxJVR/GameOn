class GamesController < ApplicationController


  def new
    @game = Game.new
  end

  def show
     @games = Game.all
  end

  def create
    Game.create(game_params)
  end

  def update
    g = Game.find params[:id]
    g.update game_params

  end

  def edit
    @game = Game.find params[:id]
  end

  def destroy
    @game = Game.find params[:id]
    Game.find(params[:id]).delete
    redirect_to current_user_path
  end

  private

  def update_games user
    user_games = params[:user][:game_ids]
    user_games.each do |id|
      user.games << Game.find(id) unless id.blank?
    end
  end

  def game_params
    params.require(:game).permit(:name)
  end

end
