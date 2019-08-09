class CompositionsController < ApplicationController
    def index
        compositions = Composition.all
        render json: compositions
    end

    def new
        composition = Composition.new
    end

    def create
        composition = Composition.create(title: composition_params[:title])

        composition.save

        render json: composition
    end

    private

    def composition_params
        params.require(:composition).permit(:title, :user_id)
    end

end
