
class Doctor
  def initialize(name)
    @name = name
    @@all << self
  end
end
