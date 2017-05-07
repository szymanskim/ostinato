class AddUserToFileResources < ActiveRecord::Migration[5.0]
  def change
    add_reference :file_resources, :user, foreign_key: true
  end
end
