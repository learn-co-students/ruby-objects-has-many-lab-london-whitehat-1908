class Post
    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author_name
        @author.name if @author
    end

    def author
        @author
    end

    def author=(a)
        a.posts << self
        @author = a
    end

    def self.all
        @@all
    end
end