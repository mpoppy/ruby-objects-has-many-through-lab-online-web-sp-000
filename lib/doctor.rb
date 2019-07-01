
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
    @appointments << appointment
    appointment
  end

  def patients
    # @appointments.select { |appointment| appointment.patient }
    Patient.all.select do |patient|
      patient.doctor = self
    end

  end

  def self.all
    @@all
  end
end
