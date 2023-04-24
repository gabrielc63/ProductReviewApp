require 'rails_helper'

RSpec.describe "reviews/show", type: :view do
  before(:each) do
    assign(:review, Review.create!(
      reviewer_name: "Reviewer Name",
      body: "MyText",
      rating: 2,
      product: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Reviewer Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
