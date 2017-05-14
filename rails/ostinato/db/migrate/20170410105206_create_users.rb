class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.integer :group, null: false, default: 0
      t.string :tel
      t.text :description

      t.timestamps
    end
  end
end
