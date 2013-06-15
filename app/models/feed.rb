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
  attr_accessible :feed_url, :name, :published_at, :summary, :site_id

  has_and_belongs_to_many :users
  belongs_to :site

  def self.update_from_feeds(feed_urls)
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

    def self.add_entries(entries)
      entries.each do |entry|
        unless exists? :site_id => entry.id
          create!( 
            :name         => entry.title,
            :summary      => entry.summary,
            :feed_url          => entry.url,
            :published_at => entry.published,
            :site_id         => entry.id
          )
        end
      end
    end

end
