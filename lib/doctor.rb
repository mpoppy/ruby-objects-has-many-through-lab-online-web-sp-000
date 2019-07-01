
class Doctor

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointment
    appointment
  end

  def self.all
    @@all
  end
end
