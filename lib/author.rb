class Author
    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_name)
        post = Post.new(post_name)
        add_post(post)
    end

    def self.post_count
        Post.all.select(&:author).length
    end
end