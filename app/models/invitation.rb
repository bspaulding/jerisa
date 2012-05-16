class Invitation < ActiveRecord::Base
  belongs_to :food_order

  validates_presence_of :name
  validates_presence_of :food_order
  validates_numericality_of :total_guests_allowed
  validates_numericality_of :total_guests_attending, :allow_blank => true

  validate :total_guests_attending_less_than_allowed

  def total_guests_attending_less_than_allowed
    if total_guests_attending && total_guests_attending > total_guests_allowed
      errors.add(:total_guests_attending, "must be less than #{total_guests_allowed}.")
    end
  end
end
