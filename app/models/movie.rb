class Movie < ApplicationRecord
  def self.categories
    @category = %w[comedy horror romance all]
  end

  validates :title, presence: true, uniqueness: true
  validates :text, presence: true
  validates :category, inclusion: {in: categories}


end
