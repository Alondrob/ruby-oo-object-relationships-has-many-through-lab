require 'pry'

class Artist

    attr_accessor :name, :songs, :genres

        @@all =[]

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
      song = Song.new(name, self, genre)
      song
    end

    def genres
        songs.map {|song| song .genre}
    end
   














end






