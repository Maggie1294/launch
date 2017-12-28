# Found an issue at second glance and made changes. Resubmitted.


# Part I - Model Your Jukebox
#
# Your Jukebox constructor should require a list of song names. This playlist represents the songs that you are requesting the jukebox to play. Like any good jukebox, it is limited to a certain set of songs that it can actually play. Below is the list of songs the jukebox can play. Your constructor should eliminate any songs from your requested songs that are not on this list:

# Hello - Lionel Ritchie
# Kokomo – The Beach Boys
# Girl You Know It’s True – Milli Vanilli
# Agadoo – Black Lace
# Down Under - Men at Work
# Nothing's Gonna Stop Us Now - Starship
# Get Outta My Dreams, Get Into My Car - Billy Ocean
# I Just Called To Say I Love You - Stevie Wonder
# Hangin' Tough - New Kids on the Block
# We Built This City - Starship
# Wake Me Up Before You Go Go - Wham!
# We Didn't Start The Fire - Billy Joel
# I Wanna Dance With Somebody - Whitney Houston
# U Can't Touch This - MC Hammer

class Jukebox
  attr_accessor :playlist

  AVAILABLE_SONGS = [
    "Hello - Lionel Ritchie",
    "Kokomo - The Beach Boys",
    "Girl You Know It’s True - Milli Vanilli",
    "Agadoo - Black Lace",
    "Down Under - Men at Work",
    "Nothing's Gonna Stop Us Now - Starship",
    "Get Outta My Dreams, Get Into My Car - Billy Ocean",
    "I Just Called To Say I Love You - Stevie Wonder",
    "Hangin' Tough - New Kids on the Block",
    "We Built This City - Starship",
    "Wake Me Up Before You Go Go - Wham!",
    "We Didn't Start The Fire - Billy Joel",
    "I Wanna Dance With Somebody - Whitney Houston",
    "U Can't Touch This - MC Hammer"
  ]

  def initialize(songs)
    @playlist = []
    songs.each do |song|
      if AVAILABLE_SONGS.include?(song)
        @playlist << song
      end
    end
  end

#   Part II - Shuffle Your Playlist
#
# Implement a shuffle! method that randomizes the order of your playlist

  def shuffle!
    @playlist.shuffle!
  end

  # Part III - Make Sweet Music
  #
  # Implement a play! instance method that takes the first song on the list and removes it from the playlist permanently. The playing song should be returned.

  def play!
    @playlist.shift
  end

#   Part IV - Add to Your Playlist
#
# Implement an add_track instance method that requires one argument, the name of the track. If the song is in list of available songs, your software should add the song the the end of the playlist and return true. If the song is not found on the list, it should just return false.

  def add_track(new_song)
    if AVAILABLE_SONGS.include?(new_song)
      @playlist << new_song
    else
      return false
  end
 end
end
