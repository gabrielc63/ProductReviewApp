class Review < ApplicationRecord
  belongs_to :product

  validates :reviewer_name, presence: true
  validates :rating, numericality: { in: 1..5 }

  after_create :update_parent_rating

  private

  def update_parent_rating
    parent_rating = product.reviews.average(:rating).to_i
    product.update(overall_rating: parent_rating)
  end
end
