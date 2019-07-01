
class patient

  attr_accessor :apointmnets

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    @appointments << appointment
  end

  def self.all
    @@all
  end
end
