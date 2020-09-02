class CreateCookings < ActiveRecord::Migration[6.0]
  def change
    create_table :cookings do |t|
      t.string  :cooking_name,     null: false
      t.string  :text,     null: false
      t.string  :material, null: false
      t.integer :user_id,  foreign_key: true
      t.timestamps
    end
  end
end