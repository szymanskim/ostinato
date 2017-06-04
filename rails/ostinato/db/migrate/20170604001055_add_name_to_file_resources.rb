class AddNameToFileResources < ActiveRecord::Migration[5.0]
  def change
    add_column :file_resources, :name, :string, null: false
  end
end
