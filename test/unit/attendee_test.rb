require 'test_helper'

class AttendeeTest < ActiveSupport::TestCase
  test "invalid if invitation is full" do
    FoodOrder.create(:name => "Chicken")
    invitation = Invitation.create(:name => "Bradley J Spaulding", :max_attendees => 2)
    invitation.attendees.create(:name => "Bradley J Spaulding", :food_order => FoodOrder.first)
    invitation.attendees.create(:name => "Another Person", :food_order => FoodOrder.first)

    attendee = invitation.attendees.build(:name => "Another Person", :food_order => FoodOrder.first)
    assert attendee.invalid?, "Attendee should be invalid."
    assert !attendee.errors[:invitation].empty?, "Attendee errors on invitation should be empty."
  end
end
