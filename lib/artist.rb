class Artist
    attr_accessor :name
#defines empty array  
    @@all = []
    #creates new instance with name and adds to existing array
    def initialize(name)
      @name = name
      @@all << self
    end
  #displays all artists within the class array
    def self.all
      @@all
    end
   #adds existing song to artist
    def add_song(song)
      song.artist = self
    end
  #creates a new song by name and adds to artist
    def add_song_by_name(name)
      song = Song.new(name)
      song.artist = self
    end
    #displays all songs assigned to artist
    def songs
      Song.all.select {|song| song.artist == self}
    end
  #counts the total amount of songs created
    def self.song_count
      Song.all.count
    end
  
  end
  