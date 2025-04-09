class Article < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { minimum: 3, maximum: 100 }
  validates :content, presence: true, length: { minimum: 20, maximum: 500 }
end
