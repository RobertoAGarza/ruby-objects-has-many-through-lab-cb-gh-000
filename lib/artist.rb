class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.songs
    @songs
  end

  def new_song(name, genre)
    newSong = Song.new(name)
    newSong.artist = self
    @songs << newSong
  end
end
