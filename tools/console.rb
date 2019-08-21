require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jaws = Movie.new("jaws")
kingkong = Movie.new("King Kong")
robocop = Movie.new("robocop")

edwin1 = Viewer.new("Edwin")
vanessa1 = Viewer.new("Vanessa")
andrew1 = Viewer.new("Andrew")

q1 = QueueItem.new(edwin1, jaws, 4)
q2 = QueueItem.new(edwin1, kingkong, 5)
q3 = QueueItem.new(edwin1, robocop, 2)
q4 = QueueItem.new(vanessa1, jaws, 4)
q5 = QueueItem.new(vanessa1, robocop)
q6 = QueueItem.new(andrew1, jaws, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
