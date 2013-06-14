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

=begin
u1.teams << t1 << t3 << t6
u2.teams << t2 << t4 << t5

t1.sites << s2 << s4
t2.sites << s3 << s9
t3.sites << s5
t4.sites << s6
t5.sites << s7 
t6.sites << s8
=end
