class Tag < ApplicationRecord
  has_many :join_tags_gossips
  has_many :gossips, through: :join_tags_gossips
  validates :title,
            presence: true,
            uniqueness: true,
            length: { maximum: 20 }
end
