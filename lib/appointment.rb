
class Appointment

  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def patient
    Patient.appointments.select |patient| do
      
    end
  end

  def self.all
    @@all
  end
end
