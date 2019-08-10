class CompositionsController < ApplicationController
    def index
        compositions = Composition.all
        render json: compositions
    end

    def show
        composition = Composition.find(params[:id])
        render json: composition
    end

    def new
        composition = Composition.new
    end

    def create
        composition = Composition.create(title: composition_params[:title])

        composition.save

        render json: composition
    end

    def edit

    end

    def update
        composition = Composition.find(params[:id])
        composition.update(title: params[:title])
        compositions = Composition.all
        render json: compositions
    end

    private

    def composition_params
        params.require(:composition).permit(:title, :user_id)
    end

end
