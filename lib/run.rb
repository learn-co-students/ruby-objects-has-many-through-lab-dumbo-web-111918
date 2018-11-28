require 'pry'
 require "./artist.rb"
 require "./song.rb"
 require "./genre.rb"

susan = Artist.new("Susan")
gloria = Artist.new("Gloria")
john = Artist.new("John")
country = Genre.new("country")
pop = Genre.new("pop")
rock = Genre.new("rock")

candyman = Song.new("Candyman", gloria, pop)
countryroads = Song.new("Country Roads", john, country)
go_your_own_way = Song.new("You can Go Your Own Way", susan, rock)

gloria.new_song("lemonade", pop)
john.new_song("water", rock)
susan.new_song("amazing", country)

puts "done"
binding.pry
