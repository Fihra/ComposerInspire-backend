class ScalesController < ApplicationController
    def index
        scales = Scale.all
        render json: scales
    end

    def new
        scale = Scale.new
    end

    def create
        scale = Scale.new(scale_name: scale_params[:scale_name], composition_id: scale_params[:composition_id])
        scale.save
        render json: scale
    end

    def destroy
        scale = Scale.find(params[:id])
        scale.destroy
        render json: scale
    end

    private
    def scale_params
        params.require(:scale).permit(:scale_name, :composition_id)
    end
end
