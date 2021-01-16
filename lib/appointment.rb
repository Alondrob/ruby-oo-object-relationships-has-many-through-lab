require 'pry'

class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor

    @@all << self
  end

  def self.all
    @@all
  end

  def patients
        self.all.collect {|app| app.patient}

  end








end