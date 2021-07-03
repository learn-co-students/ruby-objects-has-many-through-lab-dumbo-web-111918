require 'pry'

class Artist

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end


  def new_song(name, genre)
    new = Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|songs| songs.artist == self}
  end

  def genres
    genres = []
    songs.each do |song|
      genres << song.genre
      # binding.pry
    end
    genres
  end

end
