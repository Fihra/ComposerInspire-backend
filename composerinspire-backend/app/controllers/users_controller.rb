class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        user_compositions = user.compositions
        render json: user_compositions
    end

    def new
        user = User.new
    end

    # def create

    # end

    def user_params
        params.require(:user).permit(:name)
    end

end
