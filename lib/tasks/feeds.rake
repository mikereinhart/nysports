#This file is an action which populates the feeds table. Our seed.rb file
#doesn't actually have feed articles stored in it - just the sites they come
#from. By running this task, we are able to populate our feeds table.


desc "Retrieve feed entries"
task :retrieve_fe => :environment do
  puts 'Start to retrieve feed entries...'
  
  feed_urls = Site.pluck(:site_url)

  Feed.update_from_feeds(feed_urls) 
  puts 'Done retrieval!'
  Feed.count
end
