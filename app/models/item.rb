class Item < ApplicationRecord
  belongs_to :user

  SHOPS = [
    'Rataplan Amsterdam',
    'de Lokatie Amsterdam',
    'Juttersdok Amsterdam',
    'Mevius Amsterdam',
    'JunJun Amsterdam',
    'Kringloop zuidoost Amsterdam',
    'Classic & Modern Amsterdam',
    'Noppes Zaandam',
    'Het Goed Zaandam',
    'Episode Amsterdam',
    'Kringloop centrum Duivendrecht',
    'Kringloper Naarden'
  ]

end
