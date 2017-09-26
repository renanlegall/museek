class AddSoundcloudUrlToTracks < ActiveRecord::Migration[5.1]
  def change
    add_column :tracks, :soundcloud_url, :string
  end
end
