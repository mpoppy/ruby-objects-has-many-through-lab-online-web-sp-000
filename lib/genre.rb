
class Genre

  attr_accessor :name, :artist, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    
  end

  def artists

  end

  def self.all
    @@all
  end

end
