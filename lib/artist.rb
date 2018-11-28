require 'pry'

class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    artist_genre = Song.all.select {|songs| songs.artist == self}
    artist_genre.map {|song| song.genre}
  end
end
