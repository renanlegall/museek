class TracksController < ApplicationController
  def index
  end

  def show
  end

  def create
    @playlist = Playlist.find(params[:playlist_id])
    @track = Track.new(track_params)
    @track.playlist = @playlist
    if @track.save
      redirect_to playlist_path(@playlist)
    else
      render 'playlists/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def track_params
    params.require(:track).permit(:name)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
