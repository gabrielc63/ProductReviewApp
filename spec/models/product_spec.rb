require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid with name, description' do
    product = build(:product)
    expect(product).to be_valid
  end

  it "is invalid when name is not present" do
    product = build(:product, name: nil)
    product2 = build(:product, name: ' ')
    expect(product).not_to be_valid
    expect(product2).not_to be_valid
  end

  it "is invalid when description is not present" do
    product = build(:product, description: ' ')
    product.valid?
    expect(product.errors[:description]).to include("can't be blank")
  end

  it "is invalid when description is nil" do
    product = build(:product, description: nil)
    product.valid?
    expect(product.errors[:description]).to include("can't be blank")
  end
end
