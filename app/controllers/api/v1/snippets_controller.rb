class Api::V1::SnippetsController < ApplicationController

    def index
        @snippets = Snippet.all
        render json: @snippets
    end

end
