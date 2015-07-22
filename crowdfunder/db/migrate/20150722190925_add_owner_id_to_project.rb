class AddOwnerIdToProject < ActiveRecord::Migration
  def change
    add_reference :projects, :owner_id, index: true, foreign_key: true
  end
end
