class Degree < ActiveHash::Base
  self.data = [
    { id: 0, name: '--'},
    { id: 1, name: 'ノンアルコール(0%)'},
    { id: 2, name: '弱め(1~10%)'},
    { id: 3, name: '普通(10~20%)'},
    { id: 4, name: '強め(20~30%)'},
    { id: 5, name: '強い(30~40%)'},
    { id: 6, name: '非常に強い(40%以上)'},
  ]

  include ActiveHash::Associations
  has_many :cocktails
  
end