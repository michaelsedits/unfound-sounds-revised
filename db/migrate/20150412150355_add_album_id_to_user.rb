class AddAlbumIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :album_id, :integer
  end
end
