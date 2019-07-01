
class Patient

  attr_accessor :apointmnets
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    @appointments << appointment
  end

  def doctors
    @appointments.map { |appointment| appointment.doctor  }
  end

  def self.all
    @@all
  end
end
