class Book < ApplicationRecord
  belongs_to :author, class_name: 'Author'
  validates :title, presence: true
  validates :genre_id, numericality: { other_than: 1 } 
end
