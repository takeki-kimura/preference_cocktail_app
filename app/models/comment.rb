class Comment < ApplicationRecord
  class Comment < ApplicationRecord
    belongs_to :cocktail
    belongs_to :user
  
    validates :text, presence: true
  end
end
