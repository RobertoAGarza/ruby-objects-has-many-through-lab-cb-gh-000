class Artist
  attr_accessor :name, :songs
  @@all = []
  @songs = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    newSong = Song.new(name)
    newSong.artist = self
    @songs << newSong
  end
end
