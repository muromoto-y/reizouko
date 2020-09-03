class CookingsTag

  # include ActiveModel::Model
  # attr_accessor :cooking_name, :text, :material, :user_id, :name,

  # with_options presence: true do
  #   validates :cooking_name
  #   validates :image 
  #   validates :text
  #   validates :material
  #   validates :name
  # end

  # def save
  #   cooking = Cooking.create(cooking_name: cooking_name, text: text, material: material)
  #   tag = Tag.where(name: name).first_or_initialize
  #   tag.save

  #   CookingTagRelation.create(cooking_id: cooking.id, tag_id: tag.id)
  # end
end
