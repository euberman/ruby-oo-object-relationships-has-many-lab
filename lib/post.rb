class Post
    
    attr_accessor :title
    
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author
        @author
    end

    def author=(owner)
        @author = owner
    end

    def author_name
        result = @author ? @author.name : nil
        result
    end

    def self.all
        @@all
    end

end