FactoryGirl.define do
  factory :user do
    name
    email
    phone "988887777"
    address "Fremont Street"
    city "Las Vegas"
    state "Nevada"
    country "USA"
    password "foobar"
  end
end
