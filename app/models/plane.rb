class Plane < ActiveRecord::Base
  attr_accessible :model_number, :status
  has_many :flights
end
