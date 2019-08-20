require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cody = Viewer.new("Codyrae18")
john = Viewer.new("John")
edwin = Viewer.new("Edwin")

marvel1 = Movie.new("X-men")
marvel2 = Movie.new("Spiderman")
marvel3 = Movie.new("Avengers")

f_queue = QueueItem.new(marvel1, cody, 5)
f_queue2 = QueueItem.new(marvel2, edwin, 4)
f_queue3 = QueueItem.new(marvel3, john)
f_queue4 = QueueItem.new(marvel2, edwin, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
