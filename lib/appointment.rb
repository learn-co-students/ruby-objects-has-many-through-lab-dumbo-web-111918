require "pry"

class Appointment	

	attr_accessor :date
	attr_reader :patient, :doctor

	@@all = []

	def initialize(doctor, patient, date)
		@doctor = doctor
		@patient = patient
		@date = date
		@@all << self
	end

	def self.all
		@@all
	end

	

end

# binding.pry

puts "done"