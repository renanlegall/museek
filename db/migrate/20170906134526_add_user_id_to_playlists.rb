class AddUserIdToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_column :playlists, :user_id, :integer
  end
end
