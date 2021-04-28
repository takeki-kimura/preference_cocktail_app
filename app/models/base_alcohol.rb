class BaseAlcohol < ActiveHash::Base
  self.data = [
    { id: 0, name: '--'},
    { id: 1, name: 'ジン'},
    { id: 2, name: 'ウォッカ'},
    { id: 3, name: 'テキーラ'},
    { id: 4, name: 'ラム'},
    { id: 5, name: 'ウィスキー'},
    { id: 6, name: 'ブランデー'},
    { id: 7, name: 'リキュール'},
    { id: 8, name: '日本酒'},
    { id: 9, name: '焼酎'},
    { id: 10, name: '赤ワイン'},
    { id: 11, name: '白ワイン'},
  ]

  include ActiveHash::Associations
  has_many :cocktails
  
end
