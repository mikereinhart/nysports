desc "Retrieve feed entries"
task :retrieve_fe => :environment do
  puts 'Start to retrieve feed entries...'
  
  feed_urls = Site.pluck(:site_url)

  Feed.update_from_feeds(feed_urls) 
  puts 'Done retrieval!'
  Feed.count
end
