# == Schema Information
#
# Table name: feeds
#
#  id           :integer          not null, primary key
#  name         :string(255)
# desc "Retrieve feed entries"
# task :retrieve_fe => :environment do
#   puts 'Start to retrieve feed entries...'
  
# feed_urls = Site.pluck(:site_url)

#   Feed.update_from_feeds(feed_urls) 
#   puts 'Done retrieval!'

# end


#version to save  feeds to differnt team
desc "Retrieve feed entries"
task :retrieve_fe => :environment do
puts 'Start to retrieve feed entries...'
  
  # feed_urls = Site.pluck(:site_url)
  team_names = ['Jets', 'Giants', 'Yankees', 'Mets', 'Knicks', 'Nets']
  jets_urls = ['http://www.nydailynews.com/sports/football/jets/index_rss.xml', 'http://www.nypost.com/rss/jets.xml']
  # team = Team.find_by_name "Jets"
  # Feed.update_from_feeds(jets_urls, team.id) 

  giants_urls = ['http://www.nydailynews.com/sports/football/giants/index_rss.xml', 'http://www.nypost.com/rss/giants.xml']
  # team = "giants"
  # Feed.update_from_feeds(giants_urls, team) 

  nets_urls = ['http://www.nydailynews.com/sports/basketball/nets/index_rss.xml', 'http://www.nypost.com/rss/nets.xml']
  # team = "nets"
  # Feed.update_from_feeds(nets_urls, team) 

  knicks_urls = ['http://www.nypost.com/rss/knicks.xml', 'http://www.nba.com/knicks/rss.xml']
  # team = "knicks"
  # Feed.update_from_feeds(knicks_urls, team) 

  yanks_urls = ['http://www.nydailynews.com/sports/baseball/yankees/index_rss.xml']
  # team = "yanks"
  # Feed.update_from_feeds(yanks_urls, team) 

  mets_urls = ['http://www.nydailynews.com/sports/baseball/mets/index_rss.xml', 'http://www.nypost.com/rss/mets.xml']
  # team = "mets"
  # Feed.update_from_feeds(mets_urls, team) 

  teams = {'Jets' => jets_urls, 'Giants' => giants_urls, 'Yankees' => yanks_urls,
           'Nets' => nets_urls, 'Mets' => mets_urls, 'Knicks' => knicks_urls}

  team_names.each do |team_name|
    team = Team.find_by_name team_name
    Feed.update_from_feeds(teams[team_name], team.id)
  end           

  puts 'Done retrieval!'

end
