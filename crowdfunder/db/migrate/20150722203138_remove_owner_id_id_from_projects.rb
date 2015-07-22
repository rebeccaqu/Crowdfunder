class RemoveOwnerIdIdFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :owner_id_id
    rename_column :projects, :owner_id, :user_id
  end
end
