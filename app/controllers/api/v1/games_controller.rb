class Api::V1::GamesController < ApplicationController

    def create
        @game = Game.create(game_params)
        @games = Game.all

        gamesWithThisSnippet = @games.select{|game| game.snippet_id == @game.snippet_id }
        
        betterThanTheseGamesWithSnippet = gamesWithThisSnippet.select{|game| game.time_taken > @game.time_taken }
        

        @game.better_than_this_perc_people_snippet_time = 
        @game.better_than_this_perc_people_chars_per_min = 
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
