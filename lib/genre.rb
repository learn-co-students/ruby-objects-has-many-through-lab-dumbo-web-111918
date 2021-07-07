class Genre

  attr_accessor :name

  @@all =[]

  def initialize (name)
    @name = name
    @@all << self
  end


  def self.all
    @@all

  end


  def songs
    Song.all.select { |song| song.genre == self }
    #iterates through all songs and finds the songs that belong to that genre.
  end

def artists
  self.songs.collect { |e| e.artist  }
  # that iterates over the genre's collection of songs and collects the artist that owns each song.
end




end
