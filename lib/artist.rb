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
  
  def songs 
    @songs 
  end
  
  def new_song(name, genre)
    @songs << Song.new(name)
    name.artist = self 
  end 
end
