class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true, null: false
      t.references :likeable, polymorhpic: true, index: true, null: false
      t.timestamps
    end
  end
end
