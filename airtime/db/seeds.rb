# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shows = Show.create([{ name: 'South Park', description: 'South Park is an American animated television series created by Trey Parker and Matt Stone for the Comedy Central television network.', date: '1997-08-13'},
	{ name: 'Dexter', description: 'Dexter is an American television drama series, which debuted on Showtime on October 1, 2006.', date: '2006-10-01' }, 
 	{ name: 'How I Met Your Mother', description: 'How I Met Your Mother is an American sitcom that premiered on CBS on September 19, 2005, created by Craig Thomas and Carter Bays.', date: '2005-09-19' }, 
 	{ name: 'Alphas', description: 'Alphas is an American science fiction dramatic television series created by Zak Penn and Michael Karnow. The series follows a group of people with superhuman abilities, known as "Alphas", as they work to prevent crimes committed by other Alphas.', date: '2011-07-11'}, 
 	{ name: 'The Big Bang Theory', description: 'The Big Bang Theory is an American sitcom created by Chuck Lorre and Bill Prady, both of whom serve as executive producers on the show, along with Steven Molaro. All three also serve as head writers. It premiered on CBS on September 24, 2007.', date: '2007-09-24'}])

 seasons = Season.create([
 	{ name: 'Season 1', number: '1', show_id: '1', description: 'The first season of the American animated television series South Park initially ran for 13 episodes on the US network Comedy Central, from August 13, 1997 to February 25, 1998.', date: '1997-08-13'},
  { name: 'Season 2', number: '2', show_id: '1', description: 'A nice season of Southpark, bla bla', date: '2011-08-13'},
  { name: 'Season 1', number: '1', show_id: '2', description: 'The first season of Dexter is an adaptation of Jeff Lindsay\'s first novel in the Dexter series, Darkly Dreaming Dexter.', date: '2006-10-01'},
 	{ name: 'Season 2', number: '2', show_id: '2', description: 'A nice season of Dexter', date: '2007-09-30'},
 	{ name: 'Season 3', number: '3', show_id: '2', description: 'A nice season of Dexter, bla bla', date: '2008-09-28'},
 	{ name: 'Season 1', number: '1', show_id: '3', description: 'The first season of the American television comedy series How I Met Your Mother premiered on September 19, 2005 and concluded on May 15, 2006.', date: '2005-09-19'},
 	{ name: 'Season 2', number: '2', show_id: '3', description: 'A nice season of How I met your mother, bla bla', date: '2006-10-19'},
 	{ name: 'Season 3', number: '3', show_id: '3', description: 'A nice season of How I met your mother, bla bla', date: '2007-10-12'},
  { name: 'Season 1', number: '1', show_id: '4', description: 'The first season of Alphas aired on July 11, 2011', date: '2011-07-11'},
  { name: 'Season 1', number: '1', show_id: '5', description: 'The first season of the American sitcom The Big Bang Theory was originally aired on CBS from September 24, 2007 to May 19, 2008 over 17 episodes. An unaired pilot also exists.', date:'2007-09-24'}])

 episodes = Episode.create([
 	{ name: 'Cartman Gets an Anal Probe', number: '1', season_id: '1', description: 'Cartman Gets an Anal Probe is the first episode of the animated television series South Park. It first aired on Comedy Central', date: '1997-08-13'},
 	{ name: 'Weight Gain 4000', number: '2', season_id: '1', description: 'Weight Gain 4000 is the second episode of the first season of the animated television series South Park. It first aired on Comedy Central in the United States on August 20, 1997.', date: '1997-08-20'},
 	{ name: 'Volcano', number: '3', season_id: '1', description: '"Volcano" is the third episode of the animated television series South Park. It originally aired on Comedy Central in the United States on August 27, 1997. In the episode, the four main characters, Stan, Kyle, Cartman and Kenny, go on a hunting trip with Stan\'s uncle Jimbo and his war buddy Ned.', date: '1997-08-27'},
 	{ name: 'Big Gay Al\'s Big Gay Boat Ride', number: '3', season_id: '1', description: 'Big Gay Al\'s Big Gay Boat Ride is the fourth episode of the first season of the animated television series South Park. It originally aired on September 3, 1997 on Comedy Central in the United States. The episode was written by series co-founders Trey Parker and Matt Stone, and directed by Parker.', date: '1997-09-03'},
 	{ name: 'Fancy New Episode', number: '4', season_id: '2', description: 'A nice episode of Southpark, blubb...', date: '2017-09-03'},
 	{ name: 'Some Episode', number: '5', season_id: '2', description: 'A nice episode of Southpark, blubb...', date: '2012-09-03'},
  { name: 'Some Episode', number: '5', season_id: '2', description: 'A nice episode of Southpark, blubb...', date: '2012-09-12'},
  { name: 'Dexter Episode', number: '5', season_id: '3', description: 'A nice episode of Dexter, blubb...', date: '2011-09-03'},
  { name: 'Dexter Episode', number: '5', season_id: '3', description: 'A nice episode of Dexter, blubb...', date: '2011-09-12'}
 ])