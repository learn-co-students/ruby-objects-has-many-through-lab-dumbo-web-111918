class Patient

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|app_id| app_id.patient == self}
  end

  def doctors
    doctors = []
    appointments.each {|app| doctors << app.doctor}
    doctors
  end

end
