class Appointment

  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  attr_accessor :date, :patient, :doctor
end
