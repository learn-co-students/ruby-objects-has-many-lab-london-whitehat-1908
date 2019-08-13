class Song
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        @artist.name if @artist
    end

    def artist
        @artist
    end

    def artist=(a)
        a.songs << self
        @artist = a
    end

    def self.all
        @@all
    end
end