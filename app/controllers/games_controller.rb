class GamesController < ApplicationController
  before_action :authenticate_user!

  def index
    @games = current_user.games.all
  end

  def new
    @game = current_user.games.new
  end

  def create
    @game = current_user.games.new(params[:game])
    @game.state = "search"

    flash[:notice] = if @game.save
      "Game successfully created."
    else
      "Error creating game."
    end

    redirect_to action: :index
  end
end
