class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :index, null: false
      t.text :content, null: false
      t.belongs_to :post, index: true, null: false
      t.belongs_to :user, index: true, null: false
      t.timestamps
    end
  end
end
