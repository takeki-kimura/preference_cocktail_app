class Glass < ActiveHash::Base
  self.data = [
    { id: 0, name: '--'},
    { id: 1, name: 'ショート'},
    { id: 2, name: 'ロング'},
    { id: 3, name: 'ロックグラス'},
  ]

  include ActiveHash::Associations
  has_many :cocktails
  
end