class Cocktail < ApplicationRecord

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :glass
  belongs_to :base_alcohol
  belongs_to :taste
  belongs_to :degree

  has_many :preferences
  has_one_attached :image

  with_options presence: true do
    validates :cocktail_name
    validates :cocktail_recipe
    validates :glass_id
    validates :base_alcohol_id
    validates :taste_id
    validates :degree_id
  end

  with_options numericality: { other_than: 0 } do
    validates :glass_id
    validates :base_alcohol_id
    validates :taste_id
    validates :degree_id
  end

  def was_attached?
    self.image.attached?
  end

  def self.search(search)
    return Cocktail.all unless search
    Cocktail.where(['content LIKE ?', "%#{search}%"])
  end
end
