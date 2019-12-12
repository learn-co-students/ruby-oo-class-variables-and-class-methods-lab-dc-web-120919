require 'pry'
class Song 

 attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []
@@all = []
 def initialize(name, artist, genre)
 @name = name 
 @artist = artist 
 @genre = genre 
 @@count += 1 
 @@artists << artist
 @@genres  << genre
 @@all << self 
 end 
 
 
 def self.artists 
    @@artists
 end 

 def self.genre
    @@genres 
 end 
 def new(name, artist, genre)
 end 

 def name
  @name 
 end   

 def self.count
@@count
 end 

 def self.artists
   @@artists.uniq!    
 end 

def self.genres
    @@genres.uniq!
end 

def self.genre_count
#For every genre we take we check if it extis 
#if it doesnt exist create a key 
#if it does exist add to count 
   gc = {} 
   @@genres.each do |genre| 
    if gc[genre] == nil 
        gc[genre] = 1 
    else 
        gc[genre] += 1
    end 
    puts gc 
   end 
return gc 
end

def self.artist_count 
    ac = {}
    @@artists.each do |artist|
        if ac[artist] == nil 
            ac[artist] = 1
        else 
            ac[artist] +=1 
        end 
    end 
    return ac 
end 
end 
 







