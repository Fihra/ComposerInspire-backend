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
        # byebug
        instrument_array = instrument_params[:instrument_name].split(', ')
        saved_instruments = instrument_array.map do |i|
            instrument = Instrument.new(instrument_name: i, composition_id: instrument_params[:composition_id])
            instrument.save
            instrument
        end
        render json: saved_instruments
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
