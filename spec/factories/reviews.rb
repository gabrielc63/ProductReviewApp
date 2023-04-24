FactoryBot.define do
  factory :review do
    reviewer_name { "MyString" }
    body { "MyText" }
    rating { 1 }
    product { nil }
  end
end
