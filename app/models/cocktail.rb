class Cocktail < ApplicationRecord
  has_many :preferences

  def self.search(search)
    return Cocktail.all unless search
    Cocktail.where(['content LIKE ?', "%#{search}%"])
  end
end
