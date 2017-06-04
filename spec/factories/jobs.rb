FactoryGirl.define do
  factory :job do
    institution
    description { |i| "job_#{i} description" }

    trait :closed do
      closed true
    end
  end
end
