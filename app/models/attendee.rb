class Attendee < ActiveRecord::Base
  belongs_to :invitation
  belongs_to :food_order

  validates_presence_of [:name, :invitation, :food_order]
  validate :number_of_attendees_for_invitation

  def number_of_attendees_for_invitation
    unless invitation.max_attendees <= (invitation.attendees.count + 1)
      errors.add(:invitation, "is limited to #{invitation.max_attendees} attendees.")
    end
  end
end
