class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo_url
      t.string :official_url
      t.string :twitter_url
      t.string :facebook_url

      t.timestamps
    end
  end
end
