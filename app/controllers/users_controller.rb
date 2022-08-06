class UsersController < ApplicationController

    def index 
        render json: {'user_name': 'Alex'}, status: 200
    end

    def show
        user = User.find(params.require(:id))
        render json: {id: user.id, name: user.name}, status: 200
    end

    private

    def params_users
        byebug
        params.require(:id)
    end
end
