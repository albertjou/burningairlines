class Reservation < ActiveRecord::Base
  attr_accessible :flight_id, :meal, :notes
  belongs_to :flight
  belongs_to :user
end
