class JotsController < ApplicationController
    def index
        jots = Jot.all
        render json: jots
    end

    def show
        jot = Jot.find(params[:id])
        render json: jot
    end

    def new
        jot = Jot.new
    end

    def create
        jot = Jot.new(content: jot_params[:content], composition_id: jot_params[:composition_id])
        jot.save
        render json: jot
    end

    def destroy
        jot = Jot.find(params[:id])
        jot.destroy
        render json: jot
    end

    private
    def jot_params
        params.require(:jot).permit(:content, :composition_id)
    end

end
