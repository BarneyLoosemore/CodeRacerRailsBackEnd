class Api::V1::GamesController < ApplicationController

    def create
        @game = Game.new(game_params)
        @games = Game.all

        puts @game.characters_per_min

        gamesWithThisSnippet = @games.select{|game| game.snippet_id == @game.snippet_id }
        betterThanTheseGamesWithSnippet = gamesWithThisSnippet.select{|game| game.time_taken < @game.time_taken }

        @game.better_than_this_perc_people_snippet_time = 
            ((betterThanTheseGamesWithSnippet.length)*100 / (gamesWithThisSnippet.length-1)*100)/100

        puts @games

        fasterThanTheseGames = @games.select{|game| game.characters_per_min < @game.characters_per_min }

        @game.better_than_this_perc_people_chars_per_min = 
            ((fasterThanTheseGames.length)*100 / (games.length-1)*100)/100

        @game.save
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
