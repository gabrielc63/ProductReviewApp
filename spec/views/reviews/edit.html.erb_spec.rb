require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  let(:review) {
    Review.create!(
      reviewer_name: "MyString",
      body: "MyText",
      rating: 1,
      product: nil
    )
  }

  before(:each) do
    assign(:review, review)
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(review), "post" do

      assert_select "input[name=?]", "review[reviewer_name]"

      assert_select "textarea[name=?]", "review[body]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "input[name=?]", "review[product_id]"
    end
  end
end
