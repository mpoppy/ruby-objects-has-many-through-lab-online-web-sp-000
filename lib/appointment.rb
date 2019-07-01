
class Appointment

  attr_accessor :date, :doctor, :patient

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def patient
    Patient.all.select { |patient| patient.appointment = self  }
    Song.all.select{|song| song.genre = self}
  end

  def self.all
    @@all
  end
end
