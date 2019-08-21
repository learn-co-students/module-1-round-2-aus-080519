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
    QueueItem.all.select {|item| item.movie == self}
  end

  def viewers
    queue_items.collect {|item| item.viewer}
  end

  
end
