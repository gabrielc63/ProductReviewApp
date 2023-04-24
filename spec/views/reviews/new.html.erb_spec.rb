require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      reviewer_name: "MyString",
      body: "MyText",
      rating: 1,
      product: nil
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input[name=?]", "review[reviewer_name]"

      assert_select "textarea[name=?]", "review[body]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "input[name=?]", "review[product_id]"
    end
  end
end
