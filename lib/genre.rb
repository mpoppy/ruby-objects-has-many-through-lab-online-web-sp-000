
class Genre

  attr_accessor :name, :artist, :song

  @@all = []

  def initialize(name)
    @name = name
  end
end
