class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end


  # POST /games
  def create
    byebug
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end



  private

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.fetch(:game, {}).permit(:name, :user, :grid, :settings)
    end
end
