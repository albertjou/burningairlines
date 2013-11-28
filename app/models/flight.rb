class Flight < ActiveRecord::Base
  attr_accessible :plane_id, :date_time, :origin, :destination
  belongs_to :plane
  has_many :reservations
end
