class RenameTypeAttributeToGroup < ActiveRecord::Migration[5.0]
  def change
    rename_column :topics, :type, :group
  end
end
