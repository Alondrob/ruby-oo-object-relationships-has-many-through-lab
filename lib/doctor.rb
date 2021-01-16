require 'pry'

class Doctor

   attr_accessor :name,:appointments, :patient
   
   @@all_doctors = []

   def initialize(name)
    @name = name
    @@all_doctors << self

   end

    def self.all
        @@all_doctors
    end

    def appointments
        Appointment.all.select {|apt| apt.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.map {|app| app.patient } 

    end












end
