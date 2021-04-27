class Taste < ActiveHash::Base
  self.data = [
    { id: 0, name: '--'},
    { id: 1, name: '甘口'},
    { id: 2, name: '普通'},
    { id: 3, name: '辛口'},
    { id: 4, name: '柑橘系'},
    { id: 5, name: 'さっぱり系'},
    { id: 6, name: 'ハーブ系'},
  ]

  include ActiveHash::Associations
  has_many :cocktails
  
end