class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :tracks, :souncloud_url, :soundcloud_url
  end
end
