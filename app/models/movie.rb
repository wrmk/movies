class Movie < ApplicationRecord
  def self.categories
    @category = %w[Comedy Horror Romance]
  end

  validates :title, presence: true, uniqueness: true
  validates :text, presence: true
  validates :category, inclusion: {in: categories}


end
