
class Doctor

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointments
    appointment
  end

  def patients
    @appointments.select { |appointment| appointment.patient }
  end

  def self.all
    @@all
  end
end
