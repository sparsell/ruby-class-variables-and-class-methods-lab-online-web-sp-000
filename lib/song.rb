class Song

  attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []
@@genre_count = {}
@@artist_count = {}

  def initialize(name, artist, genre)
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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
    #return array; no duplicates!
  end

  def self.genre_count
    #Each genre name key should point to a value that is the number of songs that have that genre
    #You will need to iterate over the @@genres array and populate a hash with the key/value pairs. You will
    # need to check to see if the hash already contains a key of a
    # particular genre. If so, increment the value of that key by one, otherwise,
    # create a new key/value pair
    @@genre_count.uniq {|genre, count|}
  end

  def self.artist_count
    @@artist_count = {}
  end

end
