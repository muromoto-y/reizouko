class Cooking < ApplicationRecord

  # has_many :cooking_tag_relations
  # has_many :tags, through: :cooking_tag_relations
  has_one_attached :image

  # with_options presence: true do
  #   validates :cooking_name                
  #   validates :image 
  #   validates :text
  #   validates :material
  # end

  def self.search(search)
    if search != ""
      Cooking.where('material LIKE(?)', "%#{search}%")
    else
      Cooking.all
    end
  end
end