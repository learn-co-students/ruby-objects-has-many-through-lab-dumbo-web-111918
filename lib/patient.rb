class Patient
  attr_accessor :name, :doctor, :appointment

    @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date,self,doctor)

  end

  def doctors
    self.appointments.collect { |e| e.doctor }
    #iterates over that patient's Appointments and collects the doctor that belongs to each Appointment.

  end

  def appointments
    Appointment.all.select { |e| e.patient == self }
  end



end
