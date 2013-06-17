class AddTeamArticleNameToFeeds < ActiveRecord::Migration
  def change
    add_column :feeds, :team_article_name, :string
  end
end
