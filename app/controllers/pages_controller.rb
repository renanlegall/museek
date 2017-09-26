class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # @disable_footer = true
    @playlists = Playlist.all.sort_by { |playlist| playlist.upvotes.size }.reverse.first(3)
  end
end
