require "pry"

class Doctor

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(patient, date)
		Appointment.new(self, patient, date)
	end

  def appointments
    Appointment.all.select {|app| app.doctor == self}
  end

  def patients
  	appointments.map {|app| app.patient}
  	
  end

end

class Patient

	attr_accessor :name, :appointment, :doctor

	@@all = []

	def initialize(first_name)
		@first_name = first_name
		@@all << self
	end

	def self.all
		@@all
	end

end

cesar = Patient.new("cesar")

class Appointment

	attr_accessor :date, :patient, :doctor

	@@all = []

	def initialize(date, doctor, patient)
		@date = date
		@patient = patient
		@doctor = doctor
		@@all << self
	end

	def self.all
		@@all
	end
	
end



# binding.pry



puts "done"





