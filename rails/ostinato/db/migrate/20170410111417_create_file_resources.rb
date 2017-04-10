class CreateFileResources < ActiveRecord::Migration[5.0]
  def change
    create_table :file_resources do |t|
      t.string :path, null: false
      t.text :description

      t.timestamps
    end
  end
end
