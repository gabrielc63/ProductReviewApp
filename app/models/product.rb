class Product < ApplicationRecord
  has_many :reviews

  def blank_stars
    5 - overall_rating.to_i
  end
end
