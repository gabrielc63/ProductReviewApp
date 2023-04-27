class Product < ApplicationRecord
  MAX_STARS = 5
  has_many :reviews

  validates :name, presence: true
  validates :description, presence: true

  def blank_stars
    MAX_STARS - overall_rating
  end
end
