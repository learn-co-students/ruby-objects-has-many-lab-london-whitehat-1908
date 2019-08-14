class Post
    attr_accessor :title, :author
#defines empty array  
    @@all = []
  #creates new post and adds to array
    def initialize(title)
      @title = title
      @@all << self
    end
  #displays all posts created
    def self.all
      @@all
    end
  #adds post to author if author exists
    def author_name
      author.name if author
    end
  end