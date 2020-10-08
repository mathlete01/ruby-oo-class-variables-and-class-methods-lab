require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    #Pry.start(binding) 
  end

  #When we use self.___ in the method definition, it's referring to the Class
  #If we use self.____ in the code block inside the method, it's referring to the instance
  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genres
    @@unique_genres = @@genres.uniq
  end

  # def self.genre_count
  #   @genre_count = self.genres
  #   @genre_count.each do |element|
  #     element[:genre_count]
  #   end
  #   binding.pry
  # end

  def self.genre_count
    genre_histogram_hash = {}
    @@genres.uniq.each do |genre|
        genre_histogram_hash[genre] = 0
    end
     @@genres.each do |element|
        genre_histogram_hash[element] += 1
     end
     genre_histogram_hash
end

def self.artist_count
    artists_histogram_hash = {}
    @@artists.uniq.each do |artist|
        artists_histogram_hash[artist] = 0
    end
    @@artists.each do |artist|
        artists_histogram_hash[artist] += 1
    end
    artists_histogram_hash
end

  

end

