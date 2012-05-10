class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :name
      t.boolean :responded
      t.boolean :attending
      t.integer :total_guests_allowed
      t.integer :total_guests_attending

      t.timestamps
    end
  end
end
