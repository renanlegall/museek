class UpvotesController < ApplicationController
  def create
    @playlist = Playlist.find(params[:playlist_id])
    @playlist.upvotes.create! user: current_user
    respond_to do |format|
      format.html { redirect_to top_playlists_path }
      format.js
    end
  end

  def destroy
    upvote = Upvote.find(params[:id])
    @playlist = upvote.playlist

    upvote.destroy
    respond_to do |format|
      format.html { redirect_to top_playlists_path }
      format.js
    end
  end
end
