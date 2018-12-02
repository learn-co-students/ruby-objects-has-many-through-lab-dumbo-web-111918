require "pry"
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

	def new_appointment(doctor, date)
		Appointment.new(doctor, self, date)
	end

	def appointments
		Appointment.all.select do |app|
			app.patient == self
		end
	end

	def doctors
		self.appointments.each do |app|
			app.doctor
		end
	end
end

joe = Patient.new("joe")

# binding.pry

puts "done"