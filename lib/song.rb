require "pry"

class Song 

    attr_accessor :name, :artist, :genre 

    @@song_collection = [] 
    @@count = 0 
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)

        @name = name
        @artist = artist
        @genre = genre
        @@song_collection << self
        @@count += 1 
        @@artists << artist 
        @@genres << genre 
    end 

    def self.count 
        
        return @@count 
    end 

    def self.artists 
        
        return @@artists.uniq
    end 

    def self.genres
        
        return @@genres.uniq
    end 

    def self.genre_count 

        genre_hash = {} 

        #takes the list of unique genres from self.genres and counts the number
        #of occurrences in the @@genres array 
        self.genres.each do |genre_c|  

            count = @@genres.count(genre_c)
            genre_hash[genre_c] = count 
        end 

        return genre_hash 
    end 

    def self.artist_count 

        artist_hash = {}

        self.artists.each do |artist_c|
            count = @@artists.count(artist_c)
            artist_hash[artist_c] = count 
        end 

        return artist_hash 
    end 

end 