class Article < ApplicationRecord
  belongs_to :user
  has_many :articles_categories
  has_many :categories, through: :articles_categories
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
end