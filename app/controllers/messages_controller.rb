class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @playlist = Playlist.find(params[:playlist_id])
    @message.playlist = @playlist
    @message.user = current_user
    if @message.save
      ActionCable.server.broadcast("playlist_#{@playlist.id}", {
        message: @message.to_json
        })
      respond_to do |format|
        format.html { redirect_to playlist_path(@playlist) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "playlist/show" }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
