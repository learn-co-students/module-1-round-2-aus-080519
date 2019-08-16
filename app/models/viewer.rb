require_relative 'queue_item'

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    my_queue_items = QueueItem.all.select {|v| v.viewer == self}
  end
  #

  def queue_movies
   my_queue_movies = queue_items.map{|q| q.movie}
  end

  def add_movie_to_queue(movie)
    add_new_movie = QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)
    add_my_rating = queue_items.select{|q| q.rating = rating}
  end
  
end
