class Album
  include Enumerable
  attr_reader :songs

  def initialize
    @songs = []
  end

  def add_song(song)
    songs << song
  end

  def each(&block)
    songs.each(&block)
  end
end
thriller = Album.new
thriller.add_song('thriller')
thriller.add_song('Billie Lean')
puts thriller.songs
