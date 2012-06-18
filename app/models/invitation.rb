class Invitation < ActiveRecord::Base
  has_many :attendees

  validates_presence_of [:name, :max_attendees]
end
