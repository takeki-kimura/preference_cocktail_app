class Cocktail < ApplicationRecord
  has_many :preferences
  has_one_attached :image

  def self.search(search)
    return Cocktail.all unless search
    Cocktail.where(['content LIKE ?', "%#{search}%"])
  end
end
