class Patient
  @@all = []
  attr_accessor :name
  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      #binding.pry
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment| #ask
      appointment.doctor
    end
  end
end
