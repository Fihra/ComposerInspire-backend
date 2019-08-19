class InstrumentsController < ApplicationController
    def index
        instruments = Instrument.all
        render json: instruments
    end

    def show
        instrument = Instrument.find(params[:id])
        render json: instrument
    end

    def create
        instrument = Instrument.new(instrument_name: instrument_params[:instrument_name], composition_id: instrument_params[:composition_id])
        instrument.save
        render json: instrument
    end

    def destroy
        instrument = Instrument.find(params[:id])
        instrument.destroy
        render json: instrument
    end

    private
    def instrument_params
        params.require(:instrument).permit(:instrument_name, :composition_id)
    end

end
