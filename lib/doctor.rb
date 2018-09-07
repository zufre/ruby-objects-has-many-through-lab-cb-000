class Doctor
  # has a name
  attr_accessor :name

  # initializes with a name and an empty collection of appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

  # adds a new appointment to the doctor's @appointments array and tells that appointment that it belongs to the doctor
  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  # has many appointments
  def appointments
    @appointments
  end

  # has many patients, through appointments
  def patients
    self.appointments.map { |appointment| appointment.patient }
  end
end