
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    @songs << Song
  end

  def self.all
    @@all
  end

end
