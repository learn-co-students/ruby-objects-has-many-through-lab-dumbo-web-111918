require 'pry'

class Doctor

  @@all = []
  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|app_id| app_id.doctor == self}
  end

  def patients
    patients = []
    appointments.each { |app| patients << app.patient}
    patients
  end


end
