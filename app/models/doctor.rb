class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, :through => :appointments
  attr_accessible :name

  validates :name, :presence => true
end
