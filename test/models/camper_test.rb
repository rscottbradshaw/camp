require 'test_helper'

class CamperTest < ActiveSupport::TestCase
  test 'camper has a name' do
    camper = Camper.new
    assert camper.invalid?
    end
    # test 'Is there a name' do
  #   camper = Camper.create()
  #   assert camper.invalid?
  #   assert camper.errors[:name].any?
  # end
  # test "the truth" do
  #   assert true
  # end
end
