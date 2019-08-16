require_relative 'queue_item'
require_relative 'viewer'

class Movie
  attr_accessor :title 

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

    def queue_items
      my_queue_items = QueueItem.all.select {|q| q.movie == self}
    end

    def viewers
      my_queue_viewers = queue_items.map{|q| q.viewer}
    end

    def average_rating
      my_average_rating = QueueItem.all.map {|q| q.rating}
      my_average_rating_total = my_average_rating.sum
      final_rating = my_average_rating.count
      final_average = my_average_rating_total.to_f / final_rating
    end

    def self.highest_rated
      find_rating = QueueItem.all.max_by {|q| q.rating}
    end


end
