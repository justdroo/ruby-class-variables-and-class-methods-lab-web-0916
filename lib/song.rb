
 class Song

   @@count = 0
   @@artists = []
   @@genres = []

   attr_accessor :name, :artist, :genre

   def initialize(name, artist, genre)
     @@count += 1
     @name = name
     @artist = artist
      @@artists << artist
     @genre = genre
      @@genres << genre
   end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    #hash of {genres: # of songs}
    @@genres.uniq.each_with_object({}) {|genre_name, hash|
      hash[genre_name] = @@genres.select{|name| name == genre_name}.size}
  end

  def self.artist_count
    # {artist_name: #of songs}
    @@artists.uniq.each_with_object({}) {|artist_name, hash|
    hash[artist_name] = @@artists.select{|name| name == artist_name}.size}
  end


 end #end Song
