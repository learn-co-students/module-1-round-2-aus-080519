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
    QueueItem.all.select{|queue|queue.name_of_the_movie == self}
  end

  def viewers
    queue_items.collect{|queue|queue.viewer}
  end

  def average_rating
    queue_items.inject(0.0){|sum, x| sum + x.rating} /queue_items.count
  end

  # def self.highest_rated
  #  highest_rated_movies = 0
  #  @@all.each{|movie|
  # #  puts movie.inspect
  # puts movie.average_rating
  
  

   
  # }
  # end


end
