class GameController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    Game.create(game_params)
  end

  def update
    g = Game.find params[:id]
    g.update game_params
    redirect_to g
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
  def game_params
    params.require(:game).permit(:name)
  end

end
