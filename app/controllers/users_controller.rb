class UsersController < ApplicationController

    def index 
        render json: {'user_name': 'Alex'}, status: 200
    end

    def show
        render json: {'id': params_users['id']}, status: 200
    end

    private

    def params_users
        byebug
        params.require(:id)
    end
end
