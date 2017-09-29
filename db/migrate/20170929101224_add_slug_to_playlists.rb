class AddSlugToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_column :playlists, :slug, :string
  end
end
