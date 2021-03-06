class Api::V1::GamesController < ApplicationController

    def create
        @game = Game.create(game_params)
        render json: @game
    end

    def show
        @game = Game.find(params[:id])
        render json: @game
    end

    def index
        @games = Game.all
        render json: @games
    end

    private
    def game_params
        params.require(:game).permit(:user_id, :snippet_id, :time_taken, :accuracy_percentage, :characters_per_min)
    end

end
