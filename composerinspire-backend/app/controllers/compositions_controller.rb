class CompositionsController < ApplicationController
    def index
        compositions = Composition.all
        render json: compositions, include: [:songreferences]
    end

    def show
        composition = Composition.find(params[:id])
        render json: composition
    end

    def new
        composition = Composition.new
    end

    def create
        composition = Composition.new(title: composition_params[:title], user_id: composition_params[:user_id])
        composition.save
        render json: composition
    end

    def update
        composition = Composition.find(params[:id])
        composition.update(title: params[:title])
        render json: composition
    end

    def destroy
        composition = Composition.find(params[:id])
        composition.destroy
        compositions = Composition.all
        render json: compositions
    end

    private

    def composition_params
        params.require(:composition).permit(:title, :user_id)
    end

end
