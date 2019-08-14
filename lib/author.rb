class Author
  attr_accessor :name
#defines empty array
  @@all = []
#create author instance with name and adds to array
  def initialize(name)
    @name = name
    @@all << self
  end
#displays all authors
  def self.all
    @@all
  end
#adds post to the author
  def add_post(post)
    post.author = self
  end
#creates a new post by the specified title and then adds to the author
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
#displays all posts assigned to Author
  def posts
    Post.all.select {|post| post.author == self}
  end
#counts the total amount of posts created
  def self.post_count
    Post.all.count
  end
end