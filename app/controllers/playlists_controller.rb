class PlaylistsController < ApplicationController
  def index
    @disable_footer = true
    @playlists = Playlist.all
    @user = current_user
  end

  def top
    @disable_footer = true
    @playlists = Playlist.all.sort_by { |playlist| playlist.upvotes.size }.reverse
  end

  def new
    @user = current_user
    @playlist = Playlist.new
  end

  def create
    @playlist = current_user.playlists.new(playlist_params)
    if @playlist.save
      redirect_to playlist_path(@playlist)
    else
      render :new
    end
    # @playlist = current_user.playlists.new(playlist_params)
  end

  def show
    @disable_footer = true
    @user = current_user
    @playlist = Playlist.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

def playlist_params
  params.require(:playlist).permit(:name, :description, :photo)
end

end
