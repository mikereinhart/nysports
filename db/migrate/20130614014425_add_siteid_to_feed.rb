class AddSiteidToFeed < ActiveRecord::Migration
  def change
  	add_column :feeds, :site_id, :integer
  end
end
