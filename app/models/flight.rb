# == Schema Information
#
# Table name: flights
#
#  id          :integer          not null, primary key
#  plane_id    :integer
#  date_time   :datetime
#  origin      :string(255)
#  destination :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Flight < ActiveRecord::Base
  attr_accessible :plane_id, :date_time, :origin, :destination
  belongs_to :plane
  has_many :reservations
end
