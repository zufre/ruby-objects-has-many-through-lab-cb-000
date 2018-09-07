class Doctor
  @@all = []
    attr_accessor :patient, :appointment, :doctor, :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
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
