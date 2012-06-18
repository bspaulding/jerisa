class AddAttendingToInvitation < ActiveRecord::Migration
  def change
    add_column :invitations, :attending, :boolean

  end
end
