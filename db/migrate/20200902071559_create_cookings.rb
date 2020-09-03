class CreateCookings < ActiveRecord::Migration[6.0]
  def change
    create_table :cookings do |t|
      t.string  :cooking_name,     null: false
      t.string  :text,     null: false
      t.string  :material1, null: false
      t.string  :quantity1, null: false
      t.string  :material2
      t.string  :quantity2
      t.string  :material3
      t.string  :quantity3
      t.string  :material4
      t.string  :quantity4
      t.string  :material5
      t.string  :quantity5
      t.string  :material6
      t.string  :quantity6
      t.string  :material7
      t.string  :quantity7
      t.string  :material8
      t.string  :quantity8
      t.string  :material9
      t.string  :quantity9
      t.string  :material0
      t.string  :quantity0
      t.integer :user_id,  foreign_key: true
      t.timestamps
    end
  end
end