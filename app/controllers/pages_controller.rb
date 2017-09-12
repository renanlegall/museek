class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # @disable_footer = true
    @playlists = Playlist.all
  end
end
