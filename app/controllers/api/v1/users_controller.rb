class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized, only: [:signup, :index, :signin, :validate] 

    def index 
        @users = User.all
        render json: @users
    end

    def signin
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            render json: { username: @user.username, token: issue_token({ id: @user.id })}
        else
            render json: { error: 'Invalid username or password' }, status: 401
        end
    end

    def validate
        @user = get_current_user
        if @user 
            render json: { username: @user.username, token: issue_token({ id: @user.id })}
        else
            render json: { error: 'Invalid username or password' }, status: 401
        end
    end

    def signup
        @user = User.create(user_params)
        if @user.valid?
            @token = issue_token(user_id: @user.id)
            render json: { username: @user.username, token: issue_token({ id: @user.id })}
            # render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end

end
