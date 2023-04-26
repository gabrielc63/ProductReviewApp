class Review < ApplicationRecord
  belongs_to :product

  after_create :update_parent_rating

  def update_parent_rating
    parent_rating = product.reviews.average(:rating).to_i
    product.update(overall_rating: parent_rating)
  end
end
