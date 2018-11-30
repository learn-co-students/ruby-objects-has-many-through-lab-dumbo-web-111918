class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end



  def new_song(name, genre)
    Song.new(name,self,genre)
  end

  def songs
    Song.all.select { |e| e.artist == self }
    # iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
  end

  def genres
    self.songs.collect { |e| e.genre }
    # iterates over that artist's songs and collects the genre of each song.
  end

  def self.all
    @@all
  end























end
