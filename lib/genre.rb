require "pry"

class Genre

	attr_accessor :name, :song, :artist

	@@all = []

	def initialize(name)
		@name = name
		# @song = song
		# @artist = artist
		@@all << self
	end

	def self.all
		@@all
	end

	def songs
		Song.all.select {|song| song.genre.name == self.name}	
	end

	def artists
		Artist.all.each do |artist|
			artist 
		end
	end


end

# puts "done"