module Api
  class ReviewsController < ApplicationController
    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def create
      @product = Product.find(review_params[:product_id])
      @review = @product.reviews.build(review_params)

      if @review.save
        render json: @review, status: :created, location: api_reviews_url(@review)
      else
        render json: @review.errors, status: :unprocessable_entity
      end
    end

    private

    def review_params
      params.require(:review).permit(:reviewer_name, :body, :rating, :product_id)
    end

    def not_found
      render json: { error: 'Product not found' }, status: :not_found
    end
  end
end
