# == Schema Information
#
# Table name: planes
#
#  id           :integer          not null, primary key
#  model_number :string(255)
#  status       :string(255)
#  seats        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Plane < ActiveRecord::Base
  attr_accessible :model_number, :status, :seats
  has_many :flights
end
