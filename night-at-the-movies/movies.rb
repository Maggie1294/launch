# The Princess Bride, Comedy, 7:00PM
# Troll 2, Horror, 7:30PM
# Pet Cemetery, Horror, 8:15PM
# Flight of the Navigator, Adventure, 8:17PM
# Teen Witch, Comedy, 8:20PM
# The Goonies, Comedy, 8:30PM
# Better Off Dead, Comedy, 8:45PM
# Weekend at Bernies, Comedy, 9:00PM
# The Wizard, Adventure, 9:10PM

# -------------------
# PART ONE

# Create an array of movie objects to store all the information in this list. Ensure that each stored instance provides us with a way to access the title, genre, and start time of the movie.
#
# Tip: Figure out a way to create a single movie object first with a single row of data from above. Then figure out how to do that for each row of data, and then populate the new array with new movie objects.

movies = [
  { name: "The Princess Bride", genre: "Comedy", start_time: "7:00PM" },
  { name: "Troll 2", genre: "Horror", start_time: "7:30PM" },
  { name: "Pet Cemetery", genre: "Horror", start_time: "8:15PM" },
  { name: "Flight of the Navigator", genre: "Adventure", start_time: "8:17PM" },
  { name: "Teen Witch", genre: "Comedy", start_time: "8:20PM" },
  { name: "The Goonies", genre: "Comedy", start_time: "8:30PM" },
  { name: "Better Off Dead", genre: "Comedy", start_time: "8:45PM" },
  { name: "Weekend at Bernies", genre: "Comedy", start_time: "9:00PM" },
  { name: "The Wizard", genre: "Adventure", start_time: "9:10PM" }
]

require 'time'

class Movies
  def initialize(title, genre, start_time)
    @title = title
    @genre = genre
    @start_time = Time.parse([:start_time].strip)
  end

  def showing_after?(arrival_time)
    @start_time >= Time.parse(arrival_time)
  end

  def showing_between?(early_time, late_time)
    @start_time.between?(Time.parse(early_time), Time.parse(late_time))
  end

  def comedy?
    @genre == 'Comedy'
  end

  def to_s
    "#{@name} is a #{@genre} film and starts at #{start_time.strftime("%H:%M %p")}"
  end


end
