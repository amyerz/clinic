class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  attr_accessible :date, :time, :doctor_id, :patient_id
end
