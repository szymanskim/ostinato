class AddFileFolderName < ActiveRecord::Migration[5.0]
  def change
    add_column :file_resources, :folder, :string, null: false
  end
end
