class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :text, presence: true
  validates :category, presence: true
end
