class Tip < ApplicationRecord
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tags_list
    tags_array = []
    tags.each do |tag|
      tags_array.push(tag.name)
    end
    tags_array.join(', ')
  end
end
