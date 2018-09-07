class Doctor
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    appointment.doctor = self
    
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  def patients
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end
