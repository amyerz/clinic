class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, :through => :appointments
  attr_accessible :name

  validates :name, :presence =>true
end
