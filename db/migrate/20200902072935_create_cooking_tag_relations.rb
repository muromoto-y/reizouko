class CreateCookingTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :cooking_tag_relations do |t|
      t.references :cooking, foreign_key: true
      t.references :tag,     foreign_key: true
      t.timestamps
    end
  end
end
