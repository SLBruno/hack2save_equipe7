FactoryGirl.define do
  factory :institution do
    name
    email
    phone "999999999"
    address "California Street"
    city "San Francisco"
    state "California"
    country "USA"
    password "foobar"
  end
end
