require 'pry'

class Patient
    attr_accessor :name, :doctor, :appointment

    @@all_patients = []

    def initialize(name)
        @name = name
        @@all_patients << self

    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|apt| apt.patient == self}
    end


    def self.all
        @@all_patients
    end

    def doctors
        appointments.map {|appt| appt.doctor}

    end











end