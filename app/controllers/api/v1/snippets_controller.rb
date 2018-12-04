class Api::V1::SnippetsController < ApplicationController

    def show
        @snippet = Snippet.find(params[:id])
        render json: @snippet

    def index
        @snippets = Snippet.all
        render json: @snippets
    end

end
