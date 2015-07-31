class ProfilesController < ApplicationController

  def index
    @games = Game.all
  end

end
