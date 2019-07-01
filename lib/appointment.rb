
class Appointment

  attr_accessor :date, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def patient
    @patient
  end

  def self.all
    @@all
  end
end
