class SongreferencesController < ApplicationController
    def index
        songreferences = Songreference.all
        render json: songreferences
    end

    def new
        songreference = Songreference.new
    end
    
    def create
        songreference = Songreference.new(song_title: songref_params[:song_title], artist: songref_params[:artist], youtube_url: songref_params[:youtube_url], composition_id: songref_params[:composition_id])
        songreference.save
        render json: songreference
    end

    def destroy
        songreference = Songreference.find(params[:id])
        songreference.destroy
        render json: songreference
    end
    
    private

    def songref_params
        params.require(:songreference).permit(:song_title, :artist, :youtube_url, :composition_id)
    end

end
