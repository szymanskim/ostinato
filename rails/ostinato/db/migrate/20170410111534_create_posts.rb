class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content, null: false
      t.string :title
      t.belongs_to :user, index: true, null: false
      t.belongs_to :topic, index: true, null: false
      t.timestamps
    end
  end
end
