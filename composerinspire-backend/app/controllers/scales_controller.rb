class ScalesController < ApplicationController
    def index
        scales = Scale.all
        render json: scales
    end

    private
    def scale_params
        params.require(:scale).permit(:scale_name, :composition_id)
    end
end
