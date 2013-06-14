class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :name
      t.text :summary
      t.string :feed_url
      t.datetime :published_at

      t.timestamps
    end
  end
end
