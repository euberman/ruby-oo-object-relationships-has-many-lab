require './lib/post.rb'

class Author
    
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select { |p| p.author.name == self.name }
    end

    def name
        @name
    end

    def name=(new_name)
        @name = new_name
    end

    def add_post(post)
        post.author = self
    end

    def self.post_count
        Post.all.count
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end
end