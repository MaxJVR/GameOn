class MatchController < ApplicationController

  def index

    @userMatch = User.order("RANDOM()").first

  end

  def match

    userMatch = @userMatch
    userGames = userMatch.games

    if userMatch.games.game_id === @current_user.games.game_id do |game|
    game.name

  end

  end

end








