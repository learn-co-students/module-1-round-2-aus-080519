require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# <--- begin testing - initiate new instance of Viewer
sydbails = Viewer.new("sydbails")
mitchell = Viewer.new("bigmitch")
hemesh = Viewer.new("hemeshCEO")
# <--- end testing

# return all viewers
Viewer.all
# end

# <--- beging testing, initiate new istance of Movie
pee_wee_herman = Movie.new("PeeWee Herman's Playhouse")
hills_have_eyes = Movie.new("Hills Have Eyes")
pulp_fiction = Movie.new("Pulp Fiction")
# <--- end testing

# return all Movies
Movie.all
# end

# <--- begin testing, initiate new QueueItem
queue_item1 = QueueItem.new(pulp_fiction, sydbails, 5)
queue_item2 = QueueItem.new(pulp_fiction, mitchell, 4)
queue_item3 = QueueItem.new(hills_have_eyes, hemesh, 3)
# <--- end testing

#return all QueueItems
QueueItem.all
#end

# -- create test for Movie class return 2 movies if true
pulp_fiction_queue_items = pulp_fiction.queue_items
# <--- end testing


# <-- create test for viewer.queue_items
mitchell_queued_items = mitchell.queue_items # Pulp Fiction
sydbails_queued_items = sydbails.queue_items # Pulp Fiction
# < --- end testing

# <--- create test for movie.viewers
hills_have_eyes_viewers = hills_have_eyes.viewers # Hemesh
pee_wee_herman_viewers = pee_wee_herman.viewers # nil
# <-- end

# < --- create method for add movie to queue
syd_adds_movie = sydbails.add_movie_to_queue(pee_wee_herman)


# <-- create test for viewer.queue_movies
sydbails_queued_movies = sydbails.queue_movies
hemesh_queued_movies = hemesh.queue_movies
# end test

# <--- create test for viewer.rate_movie
syd_loves_pee_wee = sydbails.rate_movie(pee_wee_herman, 5) # rating == 5
# <--- end testing



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
