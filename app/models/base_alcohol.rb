class BaseAlcohol < ActiveHash::Base
  self.data = [
    { id: 0, name: '--'},
    { id: 1, name: 'ジン'},
    { id: 2, name: 'ウォッカ'},
    { id: 3, name: 'テキーラ'},
    { id: 4, name: 'ラム'},
    { id: 5, name: 'ウィスキー'},
    { id: 6, name: 'リキュール'},
    { id: 7, name: '日本酒'},
    { id: 8, name: '焼酎'},
  ]

  include ActiveHash::Associations
  has_many :cocktails
  
end
