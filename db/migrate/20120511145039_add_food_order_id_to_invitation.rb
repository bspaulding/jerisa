class AddFoodOrderIdToInvitation < ActiveRecord::Migration
  def change
    add_column :invitations, :food_order_id, :string

  end
end
