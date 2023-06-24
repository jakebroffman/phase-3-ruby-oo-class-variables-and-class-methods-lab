require 'pry'

# @@artist_count is an empty hash.
## on initialization the instance of the song class should 
jay_z = Song.new("99 Problems","JayZ", "Hip Hop")
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        @@artists.tally
    end

    def self.genre_count
        @@genres.tally
    end


    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        binding.pry
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def count 
        @@count
    end

end
