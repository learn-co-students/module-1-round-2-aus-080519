require_relative 'movie'
require_relative 'viewer'

class QueueItem

    @@all = []

    attr_accessor :movie, :viewer, :rating

    def initialize (movie, viewer, rating = 0)
        @movie = movie
        @viewer = viewer
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end


end
