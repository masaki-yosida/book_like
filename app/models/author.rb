class Author < ActiveHash::Base
  include ActiveHash::Associations
  field :name

  self.data = [
    { id: 1, name: '選択してください' },
    { id: 2, name: '青空文庫' },
    { id: 3, name: 'Kindle Unlimited' },
    { id: 4, name: 'カクヨム' },
    { id: 5, name: 'みんなのお気に入り' },
    # 他にも必要な著者を追加
  ]

  has_many :books
end

