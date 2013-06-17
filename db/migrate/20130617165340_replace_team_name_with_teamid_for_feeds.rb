class ReplaceTeamNameWithTeamidForFeeds < ActiveRecord::Migration
  def change
    add_column :feeds, :team_id, :integer
  end

end
