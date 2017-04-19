class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.integer :type
      t.string :codename

      t.timestamps
    end
  end
end
