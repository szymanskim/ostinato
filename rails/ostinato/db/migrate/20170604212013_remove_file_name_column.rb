class RemoveFileNameColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :file_resources, :name
  end
end
