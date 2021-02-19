class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artisit, :genre
  
  def initialize
    @@count += 1
    @@genres += 1
    @@artisis += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres <<  
    @@genres
  end  
  
  def self.artisits
    @@artists <<
    @@artists
  end
  
  def self.genre_count
    {"genre" => }
  end
  
  def self.artist_count
    {""}
  end
end