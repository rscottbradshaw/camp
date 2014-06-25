class Camper < ActiveRecord::Base
  belongs_to :counselor
  has_many :activities

  validates :name, presence: true
  validates :age, inclusion: { in: 10..14 }
end
