require 'pry'
  require "./doctor.rb"
  require "./patient.rb"
  require "./appointment.rb"

lucia = Doctor.new("Lucia")
michele = Doctor.new("Michele")
charles = Doctor.new("Charles")

yin = Patient.new("Yin")
yang = Patient.new("Yang")
wally = Patient.new("Wally")
charlie = Patient.new("Charlie")
sasha = Patient.new("Sasha")

first = Appointment.new("Monday, Dec 1st", yin, lucia)
second = Appointment.new("Tues, Dec 2nd", yang, michele)
third = Appointment.new("Wed, Dec 3rd", wally, charles)

lucia.new_appointment("Thurs, Dec 4th", sasha)
michele.new_appointment("Fri, Dec 5th", charlie)
charles.new_appointment("Mon, Dec 8th", yang)

yin.new_appointment("Tues, Dec 9th", lucia)
sasha.new_appointment("Wed, Dec 10th", charles)
charlie.new_appointment("Thurs, Dec 11th", michele)

puts "done"
binding.pry
