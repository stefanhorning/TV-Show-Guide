# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shows = Show.create([{ name: 'South Park', description: 'South Park is an American animated television series created by Trey Parker and Matt Stone for the Comedy Central television network.', date: '1997-08-13'}, { name: 'Dexter', description: 'Dexter is an American television drama series, which debuted on Showtime on October 1, 2006.', date: '2006-10-01' }])
seasons = Season.create([{ name: 'Season 1', number: '1', description: 'The first season of Dexter is an adaptation of Jeff Lindsay\'s first novel in the Dexter series, Darkly Dreaming Dexter.', show_id: '3', date: '2006-10-01'}, { name: 'Season 1', description: 'The first season of the American animated television series South Park initially ran for 13 episodes on the US network Comedy Central, from August 13, 1997 to February 25, 1998.', show_id: '4', date: '1997-08-13'}])