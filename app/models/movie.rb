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

  # 🐸: As we spoke, yes there are different ways you can have this class method work. 
  # But for the sake of what we've learned during our review session and applying some of the built-in enumerable methods, what you have here is definitely a good practice! Make sure you revisit this one and be able to talk about it line by line.
  def self.highest_rated
    a = QueueItem.all.select {|que| que.movie}
    current_highest_avg_rate = 0
    high = []
    a.each {|que| 
     if  que.movie.average_rating > current_highest_avg_rate 
          current_highest_avg_rate = que.movie.average_rating
         high << que.movie
     end
    }
    high[0]
  end
end
