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
    QueueItem.all.select{|queue|queue.viewer == self}
  end

  def queue_movies
    queue_items.collect{|movie|movie.name_of_the_movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)
    
  end

end
