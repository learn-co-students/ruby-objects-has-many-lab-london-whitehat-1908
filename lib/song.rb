class Song
    attr_accessor :name, :artist
    #define empty array to be used through all active classes
    @@all = []
    #when song created, has name and adds itself to class array
    def initialize(input)
        @name = input
        @@all << self
    end
    #displays all songs that have been created
    def self.all
        @@all
    end
    #locates artist to be matched with song
    def artist_name
        artist.name if artist
    end
end