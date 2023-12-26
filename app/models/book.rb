# app/models/book.rb
class Book < ApplicationRecord
  belongs_to :author, class_name: 'Author'
  validates :title, presence: true
  # 他の属性や関連もここに追加するか確認してください
end
