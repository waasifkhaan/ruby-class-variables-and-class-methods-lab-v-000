require 'pry'
class Song 
  @@count = 0 
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :artist, :name, :genre 
  
  def initialize(name = nil, artist = nil, genre = nil)
    @name= name
    @artist = artist
    @genre = genre 
    @@count = @@count + 1
    @@genres << @genre 
    @@artists << @artist 
    #binding.pry
  end
  def self.count 
    @@count
  end 
  def self.genres
     arry= []
    @@genres.each do |genre|
       arry << genre unless arry.include?(genre)
    end
    arry
  end
  def self.artists
    arry= []
    @@artists.each do |artist|
       arry << artist unless arry.include?(artist)
    end
    arry
  end
  # def self.genre_count
  #   arry= []
  #   @@genres.each do |genre|
  #     arry << genre unless arry.include?(genre) 
  #   end 
  #   arry
  # end
  def self.artist_count 
  hash= {}
  hash[new_key] = []
    @@artists.each_with_index do |artist, index|
    hash[artist] << index    unless arry.include?(artist) 
    end 
    hash
  end 
end
    