class Song
   
    attr_accessor  :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
   
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count +=1
       
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
        g_hash = {}
        @@genres.each do |genre|
            if g_hash.include?(genre)
                g_hash[genre] += 1
            else
                g_hash[genre] = 1
            end
        end
        return g_hash
    end

        def self.artist_count
            a_hash = {}
            @@artists.each do |artist|
                if a_hash.include?(artist)
                    a_hash[artist] += 1
                else
                    a_hash[artist] = 1
                end
            end
            return a_hash
        end
    
end
