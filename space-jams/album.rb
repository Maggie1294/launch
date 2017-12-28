class Album
  attr_reader :id, :title, :artists, :tracks
  attr_accessor :tracks

  def initialize(id, title, artists)
    @id = id
    @title = title
    @artists = artists
    @tracks = []
  end

  def duration
    total = 0.0
    @tracks.each do |track|
      total += track[:duration_ms].to_f
    end
    total/60000
  end

  def summary
    string = """
    Name: #{@title}
    Artist(s): #{@artists}
    Duration (min.): #{duration.round(2)}
    Tracks:\n"""
    @tracks.each do |track|
      string << "     - #{track[:title]}\n"
    end
    string
  end

end
