class Tag < ApplicationRecord
  has_many :taggings
  has_many :tips, through: :taggings
end
