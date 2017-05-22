class ChangeGroupToIsAdmin < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :group
    add_column :users, :is_admin, :boolean, null: false, default: false
  end
end
