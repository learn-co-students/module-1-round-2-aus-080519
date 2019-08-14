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
   QueueItem.all.select{|que| que.movie == self}

  end 

  def viewers 
    que = QueueItem.all.select{|que| que.movie == self}
    que.collect {|que| que.viewer}
  end
  def average_rating
   q = QueueItem.all.select {|que| que.movie == self}
   rate = q.collect{|que| que.rating}
   sum = rate.inject{|sum, num| sum + num}
   average = sum / rate.length 
  end 
  def self.highest_rated
    a = QueueItem.all.select {|que| que.movie}
    current_highest_avg_rate = 0
    high = []
    a.each {|que| 
     if  que.movie.average_rating > current_highest_avg_rate 
          current_highest_avg_rate = que.movie.average_rating
         high <<  que.movie
     end
    }
    high[0]
    
end
end
