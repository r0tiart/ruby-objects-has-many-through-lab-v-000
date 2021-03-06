class Genre
  attr_accessor :songs , :artist, :name
  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def artists
    songs.collect do |song|
      song.artist
    end
  end

end
