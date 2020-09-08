class Tag < ApplicationRecord

  has_many :cooking_tag_relations
  has_many :cookings, through: :cooking_tag_relations

   validates :name, uniqueness: true
end
