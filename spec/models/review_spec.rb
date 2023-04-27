require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:product) { FactoryBot.create(:product) }
  before { @review = product.reviews.build(reviewer_name: 'jhon', body: "test test", rating: 5) }

  subject { @review }

  it { should respond_to(:reviewer_name) }
  it { should respond_to(:body) }
  it { should respond_to(:rating) }
  it { should respond_to(:product_id) }
  it { should respond_to(:product) }

  it { should be_valid }

  describe "when product_id is not present" do
    before { @review.product_id = nil }
    it { should_not be_valid }
  end

  describe "without reviewer name" do
    before { @review.reviewer_name = nil }
    it { should_not be_valid }
  end

  describe "with blank reviewer name" do
    before { @review.reviewer_name = ' ' }
    it { should_not be_valid }
  end

  describe "without rating" do
    before { @review.rating = nil }
    it { should_not be_valid }
  end

  describe "with rating that has a value of zero" do
    before { @review.rating = 0 }
    it { should_not be_valid }
  end

  describe "with rating more than 5" do
    before { @review.rating = 6 }
    it { should_not be_valid }
  end
end
