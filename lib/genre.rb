class Genre
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @song = song
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|songs| songs.genre == self}
  end

  def artists
    song_artist_find = Song.all.select {|songs| songs.genre == self}
    song_artist_find.map {|songs| songs.artist}
  end
end
