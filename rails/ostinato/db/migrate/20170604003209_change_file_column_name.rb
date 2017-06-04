class ChangeFileColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :file_resources, :path, :attachment
  end
end
