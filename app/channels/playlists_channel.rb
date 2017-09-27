class PlaylistsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "playlist_#{params[:playlist_id]}"
  end
end
