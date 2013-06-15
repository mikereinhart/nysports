User.delete_all
Team.delete_all
Site.delete_all
Feed.delete_all

u1 = User.create(name: 'Mike', password: 'reinhart', email: 'mike@sample.com')
u2 = User.create(name: 'Bernard', password: 'doherty', email: 'bernard@sample.com')
#u3 = User.create(name: '', password: '', email: '')


t1 = Team.create(name: 'Giants', logo_url: '', official_url: 'http://www.giants.com/', twitter_url: 'https://twitter.com/Giants', facebook_url: 'https://www.facebook.com/newyorkgiants')
t2 = Team.create(name: 'Jets', logo_url: '', official_url: 'http://www.newyorkjets.com/', twitter_url: 'https://twitter.com/nyjets', facebook_url: 'https://www.facebook.com/Jets')
t3 = Team.create(name: 'Yankees', logo_url: '', official_url: 'http://newyork.yankees.mlb.com/index.jsp?c_id=nyy', twitter_url: 'https://twitter.com/Yankees', facebook_url: 'https://www.facebook.com/Yankees')
t4 = Team.create(name: 'Mets', logo_url: '', official_url: 'http://newyork.mets.mlb.com/index.jsp?c_id=nym', twitter_url: 'https://twitter.com/Mets', facebook_url: 'https://www.facebook.com/Mets')
t5 = Team.create(name: 'Knicks', logo_url: '', official_url: 'http://www.nba.com/knicks/', twitter_url: 'https://twitter.com/nyknicks', facebook_url: 'https://www.facebook.com/NYKnicks')
t6 = Team.create(name: 'Nets', logo_url: '', official_url: 'http://www.nba.com/nets/', twitter_url: 'https://twitter.com/BrooklynNets', facebook_url: 'https://www.facebook.com/BrooklynNets')

s1 = Site.create(name: 'Pro Football Talk', site_url: 'http://profootballtalk.nbcsports.com/')
s2 = Site.create(name: 'Big Blue Interactive', site_url: 'http://www.bigblueinteractive.com/')
s3 = Site.create(name: 'Jets ESPN', site_url: 'http://espn.go.com/nfl/team/_/name/nyj/new-york-jets')
s4 = Site.create(name: 'Giants ESPN', site_url: 'http://espn.go.com/nfl/team/_/name/nyg/new-york-giants')
s5 = Site.create(name: 'Yankees ESPN', site_url: 'http://espn.go.com/mlb/team/_/name/nyy/new-york-yankees')
s6 = Site.create(name: 'Mets ESPN', site_url: 'http://espn.go.com/mlb/team/_/name/nym/new-york-mets')
s7 = Site.create(name: 'Knicks ESPN', site_url: 'http://espn.go.com/nba/team/_/name/ny/new-york-knicks')
s8 = Site.create(name: 'Nets ESPN', site_url: 'http://espn.go.com/nba/team/_/name/bkn/brooklyn-nets')
s9 = Site.create(name: 'Jets Bleacher Report', site_url: 'http://bleacherreport.com/new-york-jets')

#Jets
j1 = Feed.create(name: 'NYJ Official', feed_url: 'http://www.newyorkjets.com/cda-web/rss-module.htm?tagName=News')
j2 = Feed.create(name: 'NJ.com Jets', feed_url: 'http://blog.nj.com/jets_impact/atom.xml') 

#Giants
g1 = Feed.create(name: 'NJ.com Giants', feed_url: 'http://blog.nj.com/giants_impact/atom.xml')
g2 = Feed.create(name: 'NYPost Giants', feed_url: 'http://www.nypost.com/rss/giants.xml') 

#nets
n1 = Feed.create(name: 'NJ.com Nets', feed_url: 'http://blog.nj.com/nets_impact/atom.xml') 
n2 = Feed.create(name: 'NJ Daily News Nets', feed_url: 'http://www.nydailynews.com/sports/basketball/nets/index_rss.xml') 

#knicks
k1 = Feed.create(name: 'NYPost Knicks', feed_url: 'http://www.nypost.com/rss/knicks.xml')
k2 = Feed.create(name: 'Yahoo Knicks', feed_url: 'http://sports.yahoo.com/nba/teams/nyk/rss.xml') 

#yankees
y1 = Feed.create(name: 'NJ.com Yankees', feed_url: 'http://blog.nj.com/yankees_main/atom.xml')
y2 = Feed.create(name: 'Yahoo Yankees', feed_url: 'http://sports.yahoo.com/mlb/teams/nyy/rss.xml') 

#mets
m1 = Feed.create(name: 'NYPost Mets', feed_url: 'http://www.nypost.com/rss/mets.xml')
m2 = Feed.create(name: 'NY Daily News Mets', feed_url: 'http://www.nydailynews.com/sports/baseball/mets/index_rss.xml') 

u1.teams << t1 << t3 << t6
u2.teams << t2 << t4 << t5

u1.feeds << g1 << g2 << k1 << k2
=begin
t1.sites << s2 << s4
t2.sites << s3 << s9
t3.sites << s5
t4.sites << s6
t5.sites << s7 
t6.sites << s8
=end