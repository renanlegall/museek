class TracksController < ApplicationController
  def index
  end

  def show
    @track = Track.find(params[:id])
  end

  def create
    @playlist = Playlist.find(params[:playlist_id])
    @track = Track.new(track_params)
    @track.playlist = @playlist
    if @track.save
      respond_to do |format|
        format.html { redirect_to playlist_path(@playlist) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'playlists/show' }
        format.js
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to playlist_path(@track.playlist)
  end


  private

  def track_params
    params.require(:track).permit(:name)
  end
end
