class ChangeTopicGroupToBoolFlag < ActiveRecord::Migration[5.0]
  def change
    remove_column :topics, :group
    add_column :topics, :public, :boolean, null: false, default: false
  end
end
