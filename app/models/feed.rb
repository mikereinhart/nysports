# == Schema Information
#
# Table name: feeds
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  summary      :text
#  feed_url     :string(255)
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Feed < ActiveRecord::Base
  attr_accessible :feed_url, :name, :published_at, :summary, :site_id, :thumbnail, :thumbnail_height, :thumbnail_width

  has_and_belongs_to_many :users
  belongs_to :site
  belongs_to :team


#This method relies on the 'add_entries' method to update the feeds table. 
  def self.update_from_feeds(feed_urls)
    Feedzirra::Feed.add_common_feed_entry_element("media:content", :value => :url, :as => :thumbnail)
    Feedzirra::Feed.add_common_feed_entry_element("media:content", :value => :height, :as => :thumbnail_height) 
    Feedzirra::Feed.add_common_feed_entry_element("media:content", :value => :width, :as => :thumbnail_width) 

    feeds = Feedzirra::Feed.fetch_and_parse(feed_urls)
    feeds.each do |feed_data, feed|
      add_entries(feed.entries)
    end
  end

  def self.update_from_feed_continuously(feed_url, delay_interval = 5.minutes)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries)
    loop do
      sleep delay_interval
      puts "out of sleep"
      feed = Feedzirra::Feed.update(feed)
      add_entries(feed.new_entries) if feed.updated?
    end
  end

  private
#This method is what populates our feeds table in our database. It automatically creates entries.
#Thus far we were unsuccessful in populating the table with any columns besides what feedszirra makes.
#Ideally, feeds would have been given a site_id, which would connect them to the site they came from, 
#but no such pairing was accomplished.
    def self.add_entries(entries)
      entries.each do |entry|
        unless exists? :site_id => entry.id
          create!( 
            :name         => entry.title,
            :summary      => entry.summary.sanitize!,
            :feed_url          => entry.url,
            :published_at => entry.published,
            :thumbnail          => entry.thumbnail,
            :thumbnail_height     => entry.thumbnail_height,
            :thumbnail_width      => entry.thumbnail_width,
            :site_id         => entry.id   
          )
        end
      end
    end
end
