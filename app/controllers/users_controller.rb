class UsersController < ApplicationController

    def create
        user = User.find_or_create_by(username: params[:user])
        render json: { user: user, notes: user.notes }
    end
end
