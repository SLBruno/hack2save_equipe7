FactoryGirl.define do
  factory :review do
    grade { rand(1..5) }
    content { |i| "Review #{i}" }
    reviewer { create(:user) }
    reviewed { create(:institution) }
  end
end
