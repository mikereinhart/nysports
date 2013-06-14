class AddTeamidToSite < ActiveRecord::Migration
  def change
  	add_column :sites, :team_id, :integer
  end
end
