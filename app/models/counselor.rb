class Counselor < ActiveRecord::Base
  has_many :activities, :through => :campers
  has_many :campers

  validates :first_name, presence: true
  #validates :camper, numericality: { less_than_or_equal_to: 15 }

end
