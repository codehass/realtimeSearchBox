class Search < ApplicationRecord
  belongs_to :visitor
  validates :query, presence: true, length: { minimum: 3, maximum: 255 }
end
