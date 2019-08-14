require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mitch = Viewer.new("mitch285t")
scott = Viewer.new("scotty")
bill = Viewer.new("bill")
stalin = Viewer.new("whereyourussianto")

pulp_fiction = Movie.new("Pulp Fiction")
star_wars = Movie.new("star wars epidsode III")
wall_street = Movie.new("Wall Street")
wolf = Movie.new("Wolf of Wall Street")

q1 = QueueItem.new(mitch, pulp_fiction, 5)
q2 = QueueItem.new(scott, star_wars, 4)
q3 = QueueItem.new(stalin, wall_street, 1)
q4 = QueueItem.new(mitch, wall_street, 3)
q5 = QueueItem.new(bill, wolf, 4)








binding.pry
0 #leave this here to ensure binding.pry isn't the last line
