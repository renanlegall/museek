class UpvotesController < ApplicationController
  def create
    playlist = Playlist.find(params[:playlist_id])
    playlist.upvotes.create! user: current_user
    redirect_to top_playlists_path
  end

  def destroy
    upvote = Upvote.find(params[:id])
    upvote.destroy
    redirect_to top_playlists_path
  end
end
