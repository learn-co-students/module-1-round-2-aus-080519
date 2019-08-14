
require_relative "queue_item"
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
     QueueItem.all.select {|queueitem| queueitem.viewer == self} 
  end 
  
  def queue_movies
   queue = QueueItem.all.select {|queueitem| queueitem.viewer == self}
   queue.collect {|que| que.movie }
  end 
  
  def add_movie_to_queue(movie, rating)
    QueueItem.new(self, movie, rating)
  end 
  
  # 🐸: I like your overall approach. Definitely give this one another shot on your own! Then see if you can walk it through with an instructor/coach.
  def rate_movie(moviee, int)
       if   queue_movies.find {|que| que.movie = moviee }
       puts "hello"
    #   return QueueItem.new(self, movie, int)
    # elsif QueueItem.movie == movie &&
    #   QueueItem.rating == nil 
    #   QueueItem.rating = int
    # else
    #   puts "GG"
    end
  end
end
