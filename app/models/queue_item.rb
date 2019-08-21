class QueueItem
    attr_reader :rating
    attr_accessor :viewer, :movie
    
    @@all = []
    def initialize(viewer, movie, rating=nil)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end


end
