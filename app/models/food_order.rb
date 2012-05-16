class FoodOrder < ActiveRecord::Base
  has_many :invitations
end
