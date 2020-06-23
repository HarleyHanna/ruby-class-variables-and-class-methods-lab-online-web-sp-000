class Song 
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_hash = {}
  @@artist_hash = {}
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @genre = genre
    @artist = artist
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    unique = @@genres.uniq
    unique.each do |genre|
      if @@genre_hash.key?(genre) == true
       @@genre_hash[genre] += 1
      else
        @@genre_hash.store(genre, 1)
      end
    end
    @@genre_hash
  end
        
      
  
  def self.count
    @@count
  end
  
end  