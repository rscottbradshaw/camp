class Activity < ActiveRecord::Base
  belongs_to :camper

  validates :name, presence: true

end
