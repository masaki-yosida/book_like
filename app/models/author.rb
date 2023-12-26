class Author < ActiveHash::Base
  include ActiveHash::Associations

  self.data = [
    { id: 1, name: '青空文庫' },
    { id: 2, name: 'Kindle Unlimited' },
    { id: 3, name: 'カクヨム' },
    { id: 4, name: 'みんなのお気に入り' },
    # 他にも必要な著者を追加
  ]

  has_many :books
end

