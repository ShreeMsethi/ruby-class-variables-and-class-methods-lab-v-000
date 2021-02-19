require 'pry'
class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
 
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count
    @@count
  end 
  
  def self.genres
    @@genres.to_set
  end
  
  # def self.genre_count
  #   @@genres_count = {}
  #   @@genres.each do |item|  
  #     if @@genres_count[item] 
  #       @@genres_count[item] += 1
  #     else 
  #       @@genres_count[item] = 1
  #     end
  #   end  
  #   @@genres_count
  # end 
  
  #Both method - one on top and one at bottom are right
 
  def self.genre_count
    @@genres.inject(Hash.new(0)) do |genre_count, e|
      if @@genre_count[e]
        @@genre_count[e] += 1
      else
        @@genre_count[e] = 1
      end
    end
    @@genre_count
  end
  
  def self.artists
    @@artists.to_set
  end
  
  def self.artist_count
    @@artists_count = {}
    @@artists.each do |item| 
      if @@artists_count[item]
        @@artists_count[item] += 1
      else
        @@artists_count[item] = 1
    end
  end  
  @@artists_count
end 

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
  