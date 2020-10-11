class Song
    
    attr_accessor :artist, :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        result = @artist ? @artist.name : nil
        result
    end

    def artist
        @artist
    end

    def artist=(new_artist)
        @artist = new_artist
    end

    def self.all
        @@all
    end

end