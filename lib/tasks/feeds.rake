desc "Retrieve feed entries"
task :retrieve_fe => :environment do
  puts 'Start to retrieve feed entries...'
  
  feed_urls = Site.all.map(&:site_url)

  puts feed_urls
  
  # feed_urls = @sites.site_url 

  # feed_urls = ['http://www.newyorkjets.com/cda-web/rss-module.htm?tagName=News', 'http://sports.yahoo.com/mlb/teams/nyy/rss.xml', 'http://www.nypost.com/rss/mets.xml']
  Feed.update_from_feeds(feed_urls) 
  puts 'Done retrieval!'
  Feed.count
end
