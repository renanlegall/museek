class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def show
  end

  def create
    @disable_footer = true
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
