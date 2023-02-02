require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1 
        @@genres << genre 
        @@artists << artist
    end
    def self.all_songs
        @@all_songs
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        hash = {}
       @@genres.each {|genre_str| hash.has_key?(genre_str) ? hash[genre_str] += 1 : hash[genre_str] = 1 }
        hash
    end
    def self.artist_count
        hash = {}
        @@artists.each { |artist_str| hash.has_key?(artist_str) ? hash[artist_str] += 1 : hash[artist_str] = 1}
        hash
    end      
end
