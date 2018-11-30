require 'pry'
require_relative './song'
require_relative './patient'
require_relative './genre'
require_relative './doctor'
require_relative './appointment'
require_relative './artist'

# ---------------Playlist---------------------

biggie_smalls = Artist.new("Notorious BIG")
drake = Artist.new("Drake")
ariana_grande = Artist.new("Ariana Grande")
neon_indian = Artist.new("Neon Indian")

hip_hop = Genre.new("Hip Hop")
pop = Genre.new("Pop")
indie = Genre.new("Indie")
reggaeton = Genre.new("Reggaeton")

hypnotize = Song.new("Hypnotize", biggie_smalls, hip_hop)
hotline_bling = Song.new("Hotline Bling", drake, hip_hop)
enemies = Song.new("Enemies", drake, hip_hop)
breathin = Song.new("Breathin'", ariana_grande, pop)
slumlord = Song.new("Slumlord", neon_indian, indie)
polish_girl = Song.new("Polish Girl", neon_indian, indie)
mia = Song.new("MIA", drake, reggaeton)

# ---------------Doctors Office---------------------

binding.pry
