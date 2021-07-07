class Doctor
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select { |appoint| appoint.doctor==self }

    # that iterates through all Appointments and finds those belonging to this doctor.
  end

  def patients
    appointments.map { |app| app.patient }
    #that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.
  end

  def self.all
    @@all
  end
end
