class AddThumbnailToFeeds < ActiveRecord::Migration
  def change
    add_column :feeds, :thumbnail, :string
    add_column :feeds, :thumbnail_height, :string
    add_column :feeds, :thumbnail_width, :string
  end
end
