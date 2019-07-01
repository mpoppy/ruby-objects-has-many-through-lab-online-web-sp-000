
class Patient

  attr_accessor :appointments, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
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
