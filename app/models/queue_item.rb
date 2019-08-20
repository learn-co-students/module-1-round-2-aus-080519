class QueueItem
    attr_reader :name_of_the_movie, :viewer
    attr_accessor :rating
    @@all = []

    def initialize (name_of_the_movie, viewer, rating=nil)
        @name_of_the_movie = name_of_the_movie
        @viewer = viewer
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    
end
